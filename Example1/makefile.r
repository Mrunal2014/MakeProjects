#This is the makefile

sayhello: sayhello.c hello.c functions.h
	cc -o sayhello hello.c sayhello.c

