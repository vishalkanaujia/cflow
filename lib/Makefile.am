# This file is generated automatically from lib/Makefile.am. Do not edit!
# Makefile for GNU cflow library.	-*- Makefile -*-

# Copyright (C) 2005 Free Software Foundation, Inc.

## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2, or (at your option)
## any later version.

## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.

## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the Free Software
## Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
## 02110-1301 USA.

noinst_LIBRARIES = libcflow.a
noinst_HEADERS = argcv.h
libcflow_a_SOURCES = argcv.c
libcflow_a_LIBADD = $(LIBOBJS) $(ALLOCA)
libcflow_a_DEPENDENCIES = $(libcflow_a_LIBADD)

BUILT_SOURCES =
EXTRA_DIST = Makefile.tmpl
MAINTAINERCLEANFILES =
MOSTLYCLEANFILES =
lib_OBJECTS = $(libcflow_a_OBJECTS)

# gnulib modules
# alloca

# alloca-opt
BUILT_SOURCES += $(ALLOCA_H)
EXTRA_DIST += alloca_.h

# We need the following in order to create an <alloca.h> when the system
# doesn't have one that works with the given compiler.
all-local $(lib_OBJECTS): $(ALLOCA_H)
alloca.h: alloca_.h
	cp $(srcdir)/alloca_.h $@-t
	mv $@-t $@
MOSTLYCLEANFILES += alloca.h alloca.h-t

# argp
libcflow_a_SOURCES += argp.h argp-ba.c argp-eexst.c \
           argp-fmtstream.c argp-fmtstream.h argp-fs-xinl.c argp-help.c \
           argp-namefrob.h argp-parse.c argp-pv.c argp-pvh.c argp-xinl.c

# error

# exit
libcflow_a_SOURCES += exit.h

# exitfail

# extensions

# getopt
BUILT_SOURCES += $(GETOPT_H)
EXTRA_DIST += getopt_.h getopt_int.h

# We need the following in order to create an <getopt.h> when the system
# doesn't have one that works with the given compiler.
all-local $(lib_OBJECTS): $(GETOPT_H)
getopt.h: getopt_.h
	cp $(srcdir)/getopt_.h $@-t
	mv $@-t $@
MOSTLYCLEANFILES += getopt.h getopt.h-t

# gettext
libcflow_a_SOURCES += gettext.h

# hash

# lstat

# malloc

# mempcpy

# minmax
libcflow_a_SOURCES += minmax.h

# obstack

# restrict

# stat

# stat-macros

# stdbool
BUILT_SOURCES += $(STDBOOL_H)
EXTRA_DIST += stdbool_.h

# We need the following in order to create an <stdbool.h> when the system
# doesn't have one that works.
all-local $(lib_OBJECTS): $(STDBOOL_H)
stdbool.h: stdbool_.h
	sed -e 's/@''HAVE__BOOL''@/$(HAVE__BOOL)/g' < $(srcdir)/stdbool_.h > $@-t
	mv $@-t $@
MOSTLYCLEANFILES += stdbool.h stdbool.h-t

# strcase
libcflow_a_SOURCES += strcase.h

# strchrnul
libcflow_a_SOURCES += strchrnul.h

# strndup

# strnlen

# sysexits
EXTRA_DIST += sysexit_.h

# We need the following in order to create a <sysexits.h> when the system
# doesn't have one that works with the given compiler.
all-local $(lib_OBJECTS): $(SYSEXITS_H)
sysexits.h: sysexit_.h
	cp $(srcdir)/sysexit_.h sysexits.h-t
	mv sysexits.h-t sysexits.h
MOSTLYCLEANFILES += sysexits.h sysexits.h-t

# unlocked-io

# vasnprintf
libcflow_a_SOURCES += printf-args.h printf-parse.h vasnprintf.h

# vsnprintf
libcflow_a_SOURCES += vsnprintf.h

# xalloc

# xsize
libcflow_a_SOURCES += xsize.h

