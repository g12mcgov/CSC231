/* Problem 1 Related */

/* Facts about who's male */
male(william).
male(billy).
/* Facts about who's female */
female(mary).
female(laura).
/* Facts describing parent, child relationships */ 
parent(william,billy).
parent(william,laura).
parent(mary,billy).
parent(mary,laura).
/* A definition for siblings - share the same parent */
siblings(X,Y) :- parent(Z,X), parent(Z,Y), X \= Y.
/* A definition for mother - a female parent */
mother(X,Y) :- parent(X,Y), female(X).
/* Alternate definitions for grandmother (mother's mother or father's mother). */
grandmother(X,Y) :- mother(X,Z), mother(Z,Y).
/* Can't use the next entry because I haven't yet defined father */
/* grandmother(X,Y) :- mother(X,Z), father(Z,Y). */
/* Recursive definition of ancestor */
ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Z),ancestor(Z,Y).

/* Problem 2 Related */
/* No help here - review the arithmetic/equality operators and the recursion examples */


/* Problem 3 Related */

/* This student, studentA, has fulfilled the BS in CS major requirements */
taken(studentA,cs,111).
taken(studentA,cs,112).
taken(studentA,cs,211).
taken(studentA,cs,221).
taken(studentA,cs,222).
taken(studentA,cs,231).
taken(studentA,cs,241).
taken(studentA,math,112).
taken(studentA,math,117).
taken(studentA,math,121).
taken(studentA,cs,391).
taken(studentA,cs,385).
taken(studentA,cs,343).
taken(studentA,cs,341).

/* This student, studentB, has taken a lot, but has not fulfilled the */
/* BS in CS major requirements. */ 
taken(studentB,cs,111).
taken(studentB,cs,112).
taken(studentB,cs,221).
taken(studentB,cs,222).
taken(studentB,cs,231).
taken(studentB,cs,241).
taken(studentB,math,111).
taken(studentB,math,112).
taken(studentB,math,117).

/* This student, studentC, has not fulfilled the BS in CS major requirements */
taken(studentC,cs,101).
taken(studentC,cs,111).
taken(studentC,math,117).
