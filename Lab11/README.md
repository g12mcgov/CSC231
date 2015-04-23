# Lab11

Lab #11 from my CSC 231 Programming Languages class.

Running
=======

This requires SWI-Prolog to run.

Example:

```bash
grantmcgovern@gMAC:~/Dropbox/Developer/Projects/CSC231/Labs/Lab11$ swipl

Welcome to SWI-Prolog (Multi-threaded, 64 bits, Version 6.6.6)
Copyright (c) 1990-2013 University of Amsterdam, VU Amsterdam
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software,
and you are welcome to redistribute it under certain conditions.
Please visit http://www.swi-prolog.org for details.

For help, use ?- help(Topic). or ?- apropos(Word).

?- ['lab11Takehome.plg'].
true.

?- insertionSort([2,4,1,3,5],SortedList).
SortedList = [5, 4, 3, 2, 1] 

?- 
```

Output
=======

My insertSet2():

```bash
[trace]  ?- insertSet2(4, [1,7,8,9,19], X).
   Call: (6) insertSet2(4, [1, 7, 8, 9, 19], _G2144) ? creep
   Call: (7) insertSet2(4, [7, 8, 9, 19], _G2234) ? creep
   Call: (8) insertSet2(4, [8, 9, 19], _G2234) ? creep
   Call: (9) insertSet2(4, [9, 19], _G2234) ? creep
   Call: (10) insertSet2(4, [19], _G2234) ? creep
   Call: (11) insertSet2(4, [], _G2234) ? creep
   Exit: (11) insertSet2(4, [], [4]) ? creep
   Call: (11) lists:append([19], [4], _G2240) ? creep
   Exit: (11) lists:append([19], [4], [19, 4]) ? creep
   Exit: (10) insertSet2(4, [19], [19, 4]) ? creep
   Call: (10) lists:append([9], [19, 4], _G2246) ? creep
   Exit: (10) lists:append([9], [19, 4], [9, 19, 4]) ? creep
   Exit: (9) insertSet2(4, [9, 19], [9, 19, 4]) ? creep
   Call: (9) lists:append([8], [9, 19, 4], _G2252) ? creep
   Exit: (9) lists:append([8], [9, 19, 4], [8, 9, 19, 4]) ? creep
   Exit: (8) insertSet2(4, [8, 9, 19], [8, 9, 19, 4]) ? creep
   Call: (8) lists:append([7], [8, 9, 19, 4], _G2258) ? creep
   Exit: (8) lists:append([7], [8, 9, 19, 4], [7, 8, 9, 19, 4]) ? creep
   Exit: (7) insertSet2(4, [7, 8, 9, 19], [7, 8, 9, 19, 4]) ? creep
   Call: (7) lists:append([1], [7, 8, 9, 19, 4], _G2144) ? creep
   Exit: (7) lists:append([1], [7, 8, 9, 19, 4], [1, 7, 8, 9, 19, 4]) ? creep
   Exit: (6) insertSet2(4, [1, 7, 8, 9, 19], [1, 7, 8, 9, 19, 4]) ? creep
X = [1, 7, 8, 9, 19, 4] .
```

Original insertSet():

```bash
[trace]  ?- insertSet(4, [1,7,8,9,19], X).
   Call: (6) insertSet(4, [1, 7, 8, 9, 19], _G2144) ? creep
   Call: (7) 4\=1 ? creep
   Exit: (7) 4\=1 ? creep
   Call: (7) insertSet(4, [7, 8, 9, 19], _G2234) ? creep
   Call: (8) 4\=7 ? creep
   Exit: (8) 4\=7 ? creep
   Call: (8) insertSet(4, [8, 9, 19], _G2234) ? creep
   Call: (9) 4\=8 ? creep
   Exit: (9) 4\=8 ? creep
   Call: (9) insertSet(4, [9, 19], _G2234) ? creep
   Call: (10) 4\=9 ? creep
   Exit: (10) 4\=9 ? creep
   Call: (10) insertSet(4, [19], _G2234) ? creep
   Call: (11) 4\=19 ? creep
   Exit: (11) 4\=19 ? creep
   Call: (11) insertSet(4, [], _G2234) ? creep
   Exit: (11) insertSet(4, [], [4]) ? creep
   Call: (11) lists:append([19], [4], _G2240) ? creep
   Exit: (11) lists:append([19], [4], [19, 4]) ? creep
   Exit: (10) insertSet(4, [19], [19, 4]) ? creep
   Call: (10) lists:append([9], [19, 4], _G2246) ? creep
   Exit: (10) lists:append([9], [19, 4], [9, 19, 4]) ? creep
   Exit: (9) insertSet(4, [9, 19], [9, 19, 4]) ? creep
   Call: (9) lists:append([8], [9, 19, 4], _G2252) ? creep
   Exit: (9) lists:append([8], [9, 19, 4], [8, 9, 19, 4]) ? creep
   Exit: (8) insertSet(4, [8, 9, 19], [8, 9, 19, 4]) ? creep
   Call: (8) lists:append([7], [8, 9, 19, 4], _G2258) ? creep
   Exit: (8) lists:append([7], [8, 9, 19, 4], [7, 8, 9, 19, 4]) ? creep
   Exit: (7) insertSet(4, [7, 8, 9, 19], [7, 8, 9, 19, 4]) ? creep
   Call: (7) lists:append([1], [7, 8, 9, 19, 4], _G2144) ? creep
   Exit: (7) lists:append([1], [7, 8, 9, 19, 4], [1, 7, 8, 9, 19, 4]) ? creep
   Exit: (6) insertSet(4, [1, 7, 8, 9, 19], [1, 7, 8, 9, 19, 4]) ? creep
X = [1, 7, 8, 9, 19, 4] .
```

Original count():

```
[trace]  ?- count2(2, [2,2,7,8,9,3,2], X).
   Call: (6) count2(2, [2, 2, 7, 8, 9, 3, 2], _G2150) ? creep
   Call: (7) count2(2, [2, 7, 8, 9, 3, 2], _G2246) ? creep
   Call: (8) count2(2, [7, 8, 9, 3, 2], _G2246) ? creep
   Call: (9) count2(2, [8, 9, 3, 2], _G2246) ? creep
   Call: (10) count2(2, [9, 3, 2], _G2246) ? creep
   Call: (11) count2(2, [3, 2], _G2246) ? creep
   Call: (12) count2(2, [2], _G2246) ? creep
   Call: (13) count2(2, [], _G2246) ? creep
   Exit: (13) count2(2, [], 0) ? creep
   Call: (13) _G2247 is 1+0 ? creep
   Exit: (13) 1 is 1+0 ? creep
   Exit: (12) count2(2, [2], 1) ? creep
   Exit: (11) count2(2, [3, 2], 1) ? creep
   Exit: (10) count2(2, [9, 3, 2], 1) ? creep
   Exit: (9) count2(2, [8, 9, 3, 2], 1) ? creep
   Exit: (8) count2(2, [7, 8, 9, 3, 2], 1) ? creep
   Call: (8) _G2250 is 1+1 ? creep
   Exit: (8) 2 is 1+1 ? creep
   Exit: (7) count2(2, [2, 7, 8, 9, 3, 2], 2) ? creep
   Call: (7) _G2150 is 1+2 ? creep
   Exit: (7) 3 is 1+2 ? creep
   Exit: (6) count2(2, [2, 2, 7, 8, 9, 3, 2], 3) ? creep
X = 3.
```

Original count2():

```bash
[trace]  ?- count(2, [2,2,7,8,9,3,2], X).
   Call: (6) count(2, [2, 2, 7, 8, 9, 3, 2], _G2150) ? creep
   Call: (7) count(2, [2, 7, 8, 9, 3, 2], _G2246) ? creep
   Call: (8) count(2, [7, 8, 9, 3, 2], _G2246) ? creep
   Call: (9) 2\=7 ? creep
   Exit: (9) 2\=7 ? creep
   Call: (9) count(2, [8, 9, 3, 2], _G2246) ? creep
   Call: (10) 2\=8 ? creep
   Exit: (10) 2\=8 ? creep
   Call: (10) count(2, [9, 3, 2], _G2246) ? creep
   Call: (11) 2\=9 ? creep
   Exit: (11) 2\=9 ? creep
   Call: (11) count(2, [3, 2], _G2246) ? creep
   Call: (12) 2\=3 ? creep
   Exit: (12) 2\=3 ? creep
   Call: (12) count(2, [2], _G2246) ? creep
   Call: (13) count(2, [], _G2246) ? creep
   Exit: (13) count(2, [], 0) ? creep
   Call: (13) _G2247 is 1+0 ? creep
   Exit: (13) 1 is 1+0 ? creep
   Exit: (12) count(2, [2], 1) ? creep
   Exit: (11) count(2, [3, 2], 1) ? creep
   Exit: (10) count(2, [9, 3, 2], 1) ? creep
   Exit: (9) count(2, [8, 9, 3, 2], 1) ? creep
   Exit: (8) count(2, [7, 8, 9, 3, 2], 1) ? creep
   Call: (8) _G2250 is 1+1 ? creep
   Exit: (8) 2 is 1+1 ? creep
   Exit: (7) count(2, [2, 7, 8, 9, 3, 2], 2) ? creep
   Call: (7) _G2150 is 1+2 ? creep
   Exit: (7) 3 is 1+2 ? creep
   Exit: (6) count(2, [2, 2, 7, 8, 9, 3, 2], 3) ? creep
X = 3 .
```

