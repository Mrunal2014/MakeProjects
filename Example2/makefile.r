#This is the makefile

fun: main.o usefun1.o usefun2.o
	cc -o fun main.o usefun1.o usefun2.o

main.o: main.c fundef1.h fundef2.h
	cc -c main.c

usefun1.o: usefun1.c fundef1.h
	cc -c usefun1.c

usefun2.o: usefun2.c fundef2.h
	cc -c usefun2.c
