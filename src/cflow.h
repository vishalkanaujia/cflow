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

#ifdef HAVE_CONFIG_H
# include <config.h>
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <getopt.h>
#include <errno.h>
#define obstack_chunk_alloc xmalloc
#define obstack_chunk_free free
#include <obstack.h>
#include <error.h>
#include <xalloc.h>
#include <gettext.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>


#define _(c) gettext(c)
#define N_(c) c

#if HAVE_LOCALE_H
# include <locale.h>
#endif
#if !HAVE_SETLOCALE
# define setlocale(category, locale) /* empty */
#endif

#define NUMITEMS(a) sizeof(a)/sizeof((a)[0])

typedef struct cons *Consptr;
typedef struct cons Cons;
struct cons {
     Consptr car;
     Consptr cdr;
};

#define CAR(a) (a)->car
#define CDR(a) (a)->cdr

enum symtype {
     SymUndefined,  /* Undefined or deleted symbol */
     SymToken,      /* A token */
     SymIdentifier  /* Function or variable */
};

enum storage {
     ExternStorage,
     ExplicitExternStorage,
     StaticStorage,
     AutoStorage,
     AnyStorage
};

typedef struct {
     int line;
     char *source;
} Ref;

enum symbol_flag {
     symbol_none,
     symbol_temp,                  /* Temporary symbol. Must be deleted after
				      processing of the current module */
     symbol_parm                   /* Parameter */
};

typedef struct symbol Symbol;

struct symbol {
     Symbol *next;                 /* Next symbol with the same hash */
     enum symtype type;            /* Type of the symbol */
     char *name;                   /* Identifier */
     enum symbol_flag flag;        /* Specific flag */
     
     int active;                   /* Set to 1 when the symbol's subtree is
				      being processed, prevent recursion */
     int expand_line;              /* Output line when this symbol was first
				      expanded */

     int token_type;               /* Type of the token */
     char *source;                 /* Source file */
     int def_line;                 /* Source line */
     Consptr ref_line;             /* Referenced in */
     
     int level;                    /* Block nesting level (for local vars),
				      Parameter nesting level (for params) */
     
     char *decl;                   /* Declaration */ 
     enum storage storage;         /* Storage type */
     
     int arity;                    /* Number of parameters or -1 for
				      variables */  
     
     int recursive;                /* Is the function recursive */
     Consptr caller;               /* List of callers */
     Consptr callee;               /* List of callees */
};

/* Output flags */
#define PRINT_XREF 0x01
#define PRINT_TREE 0x02

#ifndef CFLOW_PREPROC
# define CFLOW_PREPROC "/usr/bin/cpp"
#endif

#define MAX_OUTPUT_DRIVERS 8

extern unsigned char *level_mark;
extern FILE *outfile;
extern char *outname;

extern int verbose;
extern int print_option;
extern int use_indentation;
extern int assume_cplusplus;
extern int record_defines;
extern int strict_ansi;
extern char *level_indent[];
extern char *level_end[];
extern char *level_begin;
extern int print_levels;
extern int print_line_numbers;
extern int print_as_tree;
extern int brief_listing;
extern int reverse_tree;
extern int out_line;
extern char *start_name;
extern int max_depth;
extern int emacs_option;
extern int debug;
extern int preprocess_option;
extern int omit_arguments_option;
extern int omit_symbol_names_option;

extern int token_stack_length;
extern int token_stack_increase;

extern int symbol_count;
extern unsigned input_file_count;

Symbol *lookup(char*);
Symbol *install(char*);
void delete_autos(int level);
void delete_statics(void);
void delete_parms(int level);
void move_parms(int level);
void cleanup(void);
int collect_symbols(Symbol ***, int (*sel)());
Consptr append_to_list(Consptr *, void *);
int symbol_in_list(Symbol *sym, Consptr list);

int get_token(void);
int source(char *name);
void init_lex(int debug_level);
void set_preprocessor(const char *arg);
void pp_option(const char *arg); 

void init_parse(void);
int yyparse(void);

void output(void);
void newline(void);
void print_level(int lev, int last);
int globals_only(void);
int include_symbol(Symbol *sym);

void sourcerc(int *, char ***);

typedef enum {
     cflow_output_init,
     cflow_output_begin,
     cflow_output_end,
     cflow_output_newline,
     cflow_output_separator,
     cflow_output_symbol,
     cflow_output_text
} cflow_output_command;

struct output_symbol {
     int direct;
     int level;
     int last;
     Symbol *sym;
};

int register_output(const char *name,
		    int (*handler) (cflow_output_command cmd,
				    FILE *outfile, int line,
				    void *data, void *handler_data),
		    void *handler_data);
int select_output_driver (const char *name);
void output_init(void);

int gnu_output_handler(cflow_output_command cmd,
		       FILE *outfile, int line,
		       void *data, void *handler_data);
int posix_output_handler(cflow_output_command cmd,
			 FILE *outfile, int line,
			 void *data, void *handler_data);

