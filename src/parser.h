/*  $Id: parser.h,v 1.5 2005/05/18 11:36:44 gray Exp $
 *  cflow
 *  Copyright (C) 1997 Gray
 *  
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *  
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *  
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 */
/* tokens */
#define WORD 257
#define LBRACE0 258
#define RBRACE0 259
#define IDENTIFIER 260
#define EXTERN 261
#define STATIC 262
#define TYPEDEF 263
#define STRUCT 264
#define MODIFIER 265
#define OP 266
#define UNION 267
#define ENUM 268
#define LBRACE '{'
#define RBRACE '}'
#define MEMBER_OF 269
#define TYPE 270
#define STRING 271
#define PARM_WRAPPER 272

typedef struct {
    char *str;
} YYSTYPE;

extern YYSTYPE yylval;
extern char *filename;
extern char *canonical_filename;
extern int line_num;

extern int yylex(void);

