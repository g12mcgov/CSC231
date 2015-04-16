/*
*
*
* Author: Grant McGovern
* Date: 16 March 2015
*
* ~ Introduction to Prolog: Lab 10 ~
*
*/

memberOfSet(X,[X|_]).
memberOfSet(X,[_|Y]) :- memberOfSet(X,Y).

notInList(X,Y) :- not(memberOfSet(X,Y)).

listlength([],0).
listlength([_|Y],L) :- listlength(Y,Z), L is 1+Z.

stringlength(X,L) :- listlength(X,L).

listlength2(L,N) :- lengthAccumulator(L,0,N).
lengthAccumulator([],A,A).
lengthAccumulator([_|T],A,B) :- LargerSize is A+1, lengthAccumulator(T,LargerSize,B).

stringEquals(X,Y) :- intEquals(X,Y).
intEquals([],[]).
intEquals([H|T],[X|Y]) :- H=X, intEquals(T,Y).

word(john).
word(likes).
word(hates).
word(mary).
word(wine).

compose(noun, [john]).
compose(noun, [mary]).
compose(noun, [wine]).
compose(verb, [likes]).
compose(verb, [hates]).
compose(verb_phrase, [verb, noun]).
compose(sentence, [noun, verb_phrase]).

build(X,[X]) :- word(X).
build(X,P) :- compose(X, Subtype), buildlist(Subtype,P).

/* if have a list to decompose, decompose first, decompose list of rest */
/* then append results (2nd statement) */
/* if you run out of things to build, give back the empty list */
buildlist([],[]).
buildlist([H|T],Result) :- build(H, HeadComposition), buildlist(T,TailComposition), append(HeadComposition, TailComposition, Result).

deriveASentence(X) :- build(sentence,X).

printString(A) :- writef("%s", [A]).

/* START YOUR SOLUTIONS HERE */

/* insertSet() method */
insertSet(ATOM, [], [ATOM]).
insertSet([], LIST_1, LIST_1).
insertSet(ATOM, [HEAD | LIST_1], [HEAD | LIST_2]) :- ATOM == HEAD, insertSet([], [HEAD | LIST_1], [HEAD | LIST_2]).
insertSet(ATOM, [HEAD | LIST_1], [HEAD | LIST_2]) :- ATOM \= HEAD, insertSet(ATOM, LIST_1, LIST_2).


%% deleteSet(ATOM, [], []).
%% deleteSet(ATOM, [ATOM | LIST_1], LIST_1).
%% deleteSet(ATOM, [HEAD | LIST_1], [HEAD | LIST_2]) :- deleteSet(ATOM, LIST_1, LIST_2).

/* deleteSet() method */
/* makes use of the append() method above */
deleteSet(ATOM, [], []).
deleteSet(ATOM, [ATOM | TAIL], OUTPUT) :- deleteSet(ATOM, TAIL, TEMP), append([], TEMP, OUTPUT).
deleteSet(ATOM, [HEAD | TAIL], OUTPUT) :- ATOM \= HEAD, deleteSet(ATOM, TAIL, TEMP), append([HEAD], TEMP, OUTPUT).

/* count() method */
count(ATOM, [], 0).
count(ATOM, [ATOM | TAIL], OUTPUT) :- count(ATOM, TAIL, TEMP), OUTPUT is TEMP + 1.
count(ATOM, [HEAD | TAIL], OUTPUT) :- ATOM \= HEAD, count(ATOM, TAIL, OUTPUT).

/* Sums a list */
listSum([], 0).
listSum([HEAD | TAIL], OUTPUT) :- listSum(TAIL, TEMP), OUTPUT is HEAD + TEMP.

/* Again, sums a list but in a different way, using an accumulator() method */
listSum2(LIST, OUTPUT) :- accumulator(LIST, 0, OUTPUT).
accumulator([], ATOM, ATOM).
accumulator([HEAD | TAIL], ATOM1, ATOM2) :- accumulator(TAIL, ATOM1, TEMP), ATOM2 is HEAD + TEMP.

/* stringLessThan() method */
stringLessThan([], _).
stringLessThan([ATOM1 | _], [ATOM2 | _]) :- ATOM2 > ATOM1.
stringLessThan([ATOM1 | ATOM2], [ATOM3 | ATOM4]) :- ATOM1 = ATOM3, stringLessThan(ATOM2, ATOM4).

/* strcat() method */
strcat([], []).
strcat([HEAD | TAIL], OUTPUT) :- strcat(TAIL, TEMP), append(HEAD, TEMP, OUTPUT).

/* Basically shows all the grammar derivations */
/* word()  method */
word(a).
word(the).
word(smelly).
/* compose() method */
compose(determinant, [a]).
compose(determinant, [the]).
compose(adjective, [smelly]).
compose(sentence, [noun_phrase, verb_phrase]).
compose(noun_phrase, [determinant, noun]).
compose(noun_phrase, [determinant, adjective, noun]).
compose(verb_phrase, [verb, noun_phrase]).
