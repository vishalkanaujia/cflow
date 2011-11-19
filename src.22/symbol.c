/* This file is part of GNU cflow
   Copyright (C) 1997,2005 Sergey Poznyakoff

   GNU cflow is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.

   GNU cflow is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public
   License along with GNU cflow; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301 USA */

#include <cflow.h>
#include <parser.h>
#include <hash.h>

Hash_table *symbol_table;

/* Calculate the hash of a string.  */
static unsigned
hash_symbol_hasher(void const *data, unsigned n_buckets)
{
     Symbol const *sym = data;
     return hash_string(sym->name, n_buckets);
}

/* Compare two strings for equality.  */
static bool
hash_symbol_compare(void const *data1, void const *data2)
{
     Symbol const *s1 = data1;
     Symbol const *s2 = data2;
     return strcmp(s1->name, s2->name) == 0;
}

Symbol *
lookup(char *name)
{
     Symbol s;
     if (!symbol_table)
	  return NULL;
     s.name = name;
     return hash_lookup(symbol_table, &s);
}

Symbol *
install(char *name)
{
     Symbol *sym, *s;

     sym = xmalloc(sizeof(*sym));
     memset(sym, 0, sizeof(*sym));
     sym->type = SymUndefined;
     sym->name = name;

     if (canonical_filename && strcmp(filename, canonical_filename))
	  sym->flag = symbol_temp;
     else
	  sym->flag = symbol_none;
     
     if (! ((symbol_table
	     || (symbol_table = hash_initialize (0, 0, 
						 hash_symbol_hasher,
						 hash_symbol_compare, 0)))
	    && (s = hash_insert (symbol_table, sym))))
	  xalloc_die ();

     if (s != sym) {
	  if (s->type == SymUndefined) {
	       *s = *sym;
	       free(sym);
	  } else {
	       Symbol tmp = *s;
	       *s = *sym;
	       *sym = tmp;
	       s->next = sym;
	  }
     }
     return s;
}

static void
delete_symbol(Symbol *s)
{
     Symbol *next = s->next;
     if (next) {
	  *s = *next;
	  free(next);
     } else {
	  s->type = SymUndefined;
     }
}     

/* Delete from the symbol table all static symbols defined in the current
   source.
   NOTE: This takes advantage of the fact that install() uses LIFO strategy,
   so we don't have to check the name of the source where the symbol was
   defined. */

static bool
static_processor(void *data, void *proc_data)
{
     Symbol *s = data;
     
     if (s->type == SymIdentifier && s->storage == StaticStorage) 
	  delete_symbol(s);
     return true;
}

static bool
temp_processor(void *data, void *proc_data)
{
     Symbol *s = data;
     
     if (s->flag == symbol_temp) 
	  delete_symbol(s);
     return true;
}

void
delete_statics()
{
     if (globals_only()) 
	  hash_do_for_each (symbol_table, static_processor, NULL);
     hash_do_for_each (symbol_table, temp_processor, NULL);
}

/* See NOTE above */
bool
auto_processor(void *data, void *proc_data)
{
     Symbol *s = data;
     int *level = proc_data;
     if (s->type == SymIdentifier && s->storage == AutoStorage
	 && s->level == *level) 
	  delete_symbol(s);
     return true;
}

/* Delete from the symbol table all auto variables with given nesting
   level. */
void
delete_autos(int level)
{
     hash_do_for_each (symbol_table, auto_processor, &level);
}


/* Make all list pointers of the SYM ready for final processing.
 * This means for each list replace its entry point with its CAR
 * and throw away the first cons. The first cons holds pointers
 * to the head and tail of the list and is used to speed up appends.
 *  
 * TODO: The memory is not reclaimed
 */
static bool
cleanup_processor(void *data, void *proc_data)
{
     Symbol *sym;

     for (sym = data; sym; sym = sym->next) {
	  if (sym->type == SymIdentifier) {
	       if (sym->ref_line)
		    sym->ref_line = CAR(sym->ref_line);
	       if (sym->caller)
		    sym->caller = CAR(sym->caller);
	       if (sym->callee)
		    sym->callee = CAR(sym->callee);
	  }
     }
     return true;
}


/* Clean up all symbols from the auxiliary information.
 * See the comment for cleanup_symbol() above
 */
extern char* sym_array[];
void
cleanup()
{
     hash_do_for_each (symbol_table, cleanup_processor, NULL);

	 int i = 0;
	 if (sym_array) {
		while(sym_array[i]) {
			free(sym_array[i]);
			i++;
		}
	 }
}

struct collect_data {
     Symbol **sym;
     int (*sel)(Symbol *p);
     size_t index;
};

static bool
collect_processor(void *data, void *proc_data)
{
     Symbol *s;
     struct collect_data *cd = proc_data;
     for (s = data; s; s = s->next) {
	  if (cd->sel(s)) {
	       if (cd->sym)
		    cd->sym[cd->index] = s;
	       cd->index++;
	  }
     }
     return true;
}

int
collect_symbols(Symbol ***return_sym, int (*sel)(Symbol *p))
{
     struct collect_data cdata;

     cdata.sym = NULL;
     cdata.index = 0;
     cdata.sel = sel;
     hash_do_for_each (symbol_table, collect_processor, &cdata);
     cdata.sym = calloc(cdata.index, sizeof(*cdata.sym));
     if (!cdata.sym)
	  xalloc_die();
     cdata.index = 0;
     hash_do_for_each (symbol_table, collect_processor, &cdata);
     *return_sym = cdata.sym;
     return cdata.index;
}


/* Special handling for function parameters */

static bool
delete_parm_processor(void *data, void *proc_data)
{
     Symbol *s = data;
     int *level = proc_data;
     if (s->type == SymIdentifier && s->storage == AutoStorage
	 && s->flag == symbol_parm && s->level > *level)
	  delete_symbol(s);
     return true;
}

/* Delete all parameters with parameter nesting level greater than LEVEL */
void
delete_parms(int level)
{
     hash_do_for_each (symbol_table, delete_parm_processor, &level);
}

static bool
move_parm_processor(void *data, void *proc_data)
{
     Symbol *s = data;
     int level = *(int*)proc_data;
     if (s->type == SymIdentifier && s->storage == AutoStorage
	 && s->flag == symbol_parm) {
	  s->level = level;
	  s->flag = symbol_none;
     }
     return true;
}

/* Redeclare all saved parameters as automatic variables with the
   given nesting level */
void
move_parms(int level)
{
     hash_do_for_each (symbol_table, move_parm_processor, &level);
}


typedef struct bucket Bucket;
struct bucket {
     Bucket *next; /* Next bucket */
     int free;
     Cons cons[1];
};

static int bucket_nodes = 512;
static Bucket *root_bucket, *last_bucket;

void
alloc_new_bucket()
{
     Bucket *bp;
     
     bp = malloc(sizeof(*bp) + sizeof(Cons)*(bucket_nodes-1));
     if (!bp)
	  return;
     bp->next = NULL;
     bp->free = 0;
     if (!root_bucket) 
	  root_bucket = last_bucket = bp;
     else {
	  last_bucket->next = bp;
	  last_bucket = bp;
     }
}

Consptr
alloc_cons_from_bucket()
{
     if (!last_bucket || last_bucket->free == bucket_nodes)
	  return NULL;
     return &last_bucket->cons[last_bucket->free++];
}

Consptr
alloc_cons()
{
     Consptr cp;
     
     cp = alloc_cons_from_bucket();
     if (!cp) {
	  alloc_new_bucket();
	  if ((cp = alloc_cons_from_bucket()) == NULL) {
	       error(2, 0, _("not enough core"));
	  }
     }
     CAR(cp) = CDR(cp) = NULL;
     return cp;
}

/* Append a new cons to the tail of the list
 * ROOT_PTR points to a `root cons'. 
 * CAR is the car value of the cons to be created.
 *  
 * Note: Car of the root cons points to the head of the list,
 * cdr of root cons points to  the tail of the list.
 */
Consptr
append_to_list(Consptr *root_ptr, void *car)
{
     Consptr root, cons;
     
     if (!*root_ptr) {
	  *root_ptr = alloc_cons();
	  /* both car and cdr are guaranteed to be NULL */ 
     }
     root = *root_ptr;
     
     cons = alloc_cons();
     if (!CAR(root))
	  CAR(root) = cons;
     
     /* Maintain linked list */
     if (CDR(root))
	  CDR(CDR(root)) = cons;
     CDR(root) = cons;
     CAR(cons) = car;
     return cons;
}

int
symbol_in_list(Symbol *sym, Consptr list)
{
     Consptr cons;
     
     if (!list)
	  return 0;
     for (cons = CAR(list); cons; cons = CDR(cons))
	  if ((Symbol*)CAR(cons) == sym)
	       return 1;
     return 0;
}
