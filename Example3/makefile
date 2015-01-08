#
# makefile sample that uses phony targets and macros
#

# *** MACROS

INSTPATH=./bin/usefun
INCPATH=./include
OBJPATH=./obj
CC=cc
CFLAGS=-g -Wall -I$(INCPATH)
COND1=`stat usefun 2>/dev/null | grep Modify`
COND2=`stat $(INSTPATH) 2>/dev/null | grep Modify`

# *** Targets

all: getobj usefun install putobj

usefun: main.o usefun1.o usefun2.o
	$(CC) $(CFLAGS) -o usefun main.o usefun1.o usefun2.o

main.o: main.c $(INCPATH)/fundef1.h $(INCPATH)/fundef2.h
	$(CC) $(CFLAGS) -c main.c

usefun1.o: usefun1.c $(INCPATH)/fundef1.h
	$(CC) $(CFLAGS) -c usefun1.c

usefun2.o: usefun2.c $(INCPATH)/fundef2.h
	$(CC) $(CFLAGS) -c usefun2.c

getobj:
	-mv $(OBJPATH)/*.o . 2>/dev/null

putobj:
	-mv *.o $(OBJPATH) 2>/dev/null

# Process only when app timestamp is changed
install:
	@if [ "$(COND1)" != "$(COND2)" ];\
	then\
		cp -p ./usefun $(INSTPATH) 2>/dev/null;\
		chmod 700 $(INSTPATH);\
		echo "Installed in" $(INSTPATH);\
	fi

# This one is used for housekeeping
cleanall:
	-rm -f usefun
	-rm -f $(OBJPATH)/*.o
	-rm -f $(INSTPATH)

