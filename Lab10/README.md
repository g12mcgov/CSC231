# Lab10

Running
=======

This requires SWI-Prolog.

Example:

```bash
grantmcgovern@gMAC:~/Dropbox/Developer/Projects/CSC231/Labs/Lab10$ swipl
Welcome to SWI-Prolog (Multi-threaded, 64 bits, Version 6.6.6)
Copyright (c) 1990-2013 University of Amsterdam, VU Amsterdam
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software,
and you are welcome to redistribute it under certain conditions.
Please visit http://www.swi-prolog.org for details.

For help, use ?- help(Topic). or ?- apropos(Word).

?- ['lab10Takehome.plg'].
Warning: /Users/grantmcgovern/Dropbox/Developer/Projects/CSC231/Labs/Lab10/lab10Takehome.plg:71:
	Singleton variables: [ATOM]
Warning: /Users/grantmcgovern/Dropbox/Developer/Projects/CSC231/Labs/Lab10/lab10Takehome.plg:76:
	Singleton variables: [ATOM]
Warning: /Users/grantmcgovern/Dropbox/Developer/Projects/CSC231/Labs/Lab10/lab10Takehome.plg:100:
	Clauses of word/1 are not together in the source-file
Warning: /Users/grantmcgovern/Dropbox/Developer/Projects/CSC231/Labs/Lab10/lab10Takehome.plg:104:
	Clauses of compose/2 are not together in the source-file
% lab10Takehome.plg compiled 0.00 sec, 61 clauses
true.

?- listSum([1,2,3,4,5],Y).
Y = 15.

?- 
```