#!/bin/bash
#	ubuntu.sh
#
#	=============================================================
#
#   Copyright 1996-2012 Tom Barbalet. All rights reserved.
#
#   Permission is hereby granted, free of charge, to any person
#   obtaining a copy of this software and associated documentation
#   files (the "Software"), to deal in the Software without
#   restriction, including without limitation the rights to use,
#   copy, modify, merge, publish, distribute, sublicense, and/or
#   sell copies of the Software, and to permit persons to whom the
#   Software is furnished to do so, subject to the following
#   conditions:
#
#   The above copyright notice and this permission notice shall be
#	included in all copies or substantial portions of the Software.
#
#   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
#   EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
#   OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
#   NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
#   HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
#   WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#   FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
#   OTHER DEALINGS IN THE SOFTWARE.
#
#   This software and Noble Ape are a continuing work of Tom Barbalet,
#   begun on 13 June 1996. No apes or cats were harmed in the writing
#   of this software.

if [ $# -ge 1 -a "$1" == "--debug" ]
then
    CFLAGS=-g
else
    CFLAGS=-O2 
fi

INCLUDES="-I/usr/include/gtk-2.0 -I/usr/lib/gtk-2.0/include -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/cairo -I/usr/lib/glib-2.0/include -I/usr/include/glib-2.0 -I/usr/include"

LIBS="-L/usr/lib/gdm -L/usr/lib -L/usr/lib/glib-2.0 -L/usr/lib/gdk-pixbuf-2.0 -L/usr/lib/gtk-2.0 -L/usr/lib/pango-1.0 -L/usr/lib/cairo -lXm -lXt -lX11 -lm"

LIBS2="`pkg-config --cflags gtk+-2.0` `pkg-config --libs gtk+-2.0` -lm"

./linux.sh --additional

gcc ${CFLAGS} ${INCLUDES} -c gtk/platform.c -o platform.o ${LIBS2}

gcc ${CFLAGS} ${INCLUDES} -o ../na io.o math.o parse.o interpret.o being.o body.o brain.o metabolism.o land.o social.o episodic.o food.o drives.o sim.o file.o genealogy.o draw.o control.o platform.o console.o speak.o ${LIBS2}

rm *.o