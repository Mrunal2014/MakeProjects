#This is the makefile

sayhello: sayhello.c hello.c
	cc -o sayhello hello.c sayhello.c
