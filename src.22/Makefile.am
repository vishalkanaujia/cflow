# This file is part of GNU cflow
# Copyright (C) 2005 Free Software Foundation, Inc.
#
# Written by Sergey Poznyakoff
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
# 02110-1301 USA.

INCLUDES = -I$(top_srcdir)/lib -I../ -I../lib

bin_PROGRAMS = cflow
cflow_SOURCES = \
 main.c\
 rc.c\
 parser.c\
 c.l\
 output.c\
 symbol.c\
 cflow.h\
 parser.h\
 gnu.c\
 posix.c

localedir = $(datadir)/locale

cflow_LDADD=../lib/libcflow.a $(LIBINTL)
AM_CPPFLAGS=-DLOCALEDIR=\"$(localedir)\"
AM_LFLAGS=-dvp
EXTRA_DIST=cflow.rc

CFLOW_FLAGS=-i^s --brief
cflow_CFLOW_INPUT=$(cflow_OBJECTS:.@OBJEXT@=.c)
cflow.cflow: $(cflow_CFLOW_INPUT) cflow.rc Makefile
	CFLOWRC=$(top_srcdir)/src/cflow.rc \
	 cflow -o$@ $(CFLOW_FLAGS) $(DEFS) \
                    $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
	            $(CPPFLAGS) \
         $(cflow_CFLOW_INPUT)
