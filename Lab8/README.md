# Lab 8 

<b>Author:</b> Grant McGovern 

<b>Date:</b> 23 March 2015 

<b>Description:</b> Introduction to Prolog Lab 8.

Note: Wrote in an `.md` (markdown file to comply with Github README standards)

URL: https://github.com/g12mcgov/CSC231/tree/master/Lab8

Part 1
=======

```Prolog
	father(X, Y)
```

This method takes an input `X` and `Y` where `X` is the father and Y is the `son` or daughter object. This method works by calling the `parent(X, Y)` method and the `male(X)` method. If both evaluate to `true`, i.e., it is a parent <b>and</b> a male, then he must be a father.

```Prolog
	daughter(X, Y)
```

This method takes inputs `X` and `Y` where the `X` value corresponds to the input we're testing for a daughter. It works by first calling the `female(X)` method and then the `parent(Y, X)` method. If that parent is a parent of that child <b>and</b> that child is a female, she must be a daughter.

```Prolog
	son(X, Y)
```

This method takes an input `X` and an input `Y` where `X` is the child we are testing to see if it is a son. We first make a call to the `male(X)` method to see if it's a guy, <b>and</b> the `parent(X, Y)` method to check if that parent is a parent of that child.

```Prolog
	sister(X, Y)
```

This method takes an input `X` and an input `Y` where we are trying to determine if `X` is a sister of `Y`. We first make a call to the `siblings(X, Y)` method to check if `X` and `Y` are siblings to each other <b>and</b> if `X` is a female. We also make a check to assure `X` is not equal to `Y` because you can't be a sibling to yourself.

```Prolog
	brother(X, Y)
```

Like the above method, this takes inputs `X` and `Y` where we are trying to determine if `X` is a brother to `Y`. We first call to the `siblings(X, Y)` method to check if `X` and `Y` are siblings to each other <b>and</b> and if `X` is a male. Again we check to make sure `X` is not equal to `Y`.

```Prolog
	grandfather(X, Y)
```

This method takes inputs `X` and `Y` and determines if `X` is a grandfather to `Y`. It makes multiple calls to the father method `father(X, Z), father(Z, Y)` to first check if the child `Z` of the first father and if `Z` is also a father the child `Y`. If we have satisfied both of these conditions, then we know that `X` has to be a grandfather.

```Prolog
	aunt(X, Y)
```

This method takes inputs `X` and `Y` and attempts to see if `X` is an aunt to `Y`. It does this by checking if the following condition is satisfied: `sister(X, Z), mother(Z, Y)` is satisfied for some person `Z`. It then also checks the above statement but with `father(X, Y)` instead of `mother(X, Y)` because the person might be a sister of a male, which would mean father.


```Prolog
	uncle(X, Y)
```

Like the `aunt(X, Y)` method, this takes inputs `X` and `Y` and determines if `X` is an uncle to some person `Y`. It works by first checking if the following condition is satisfied: `brother(X, Z), father(Z, Y)` is satisfied for some person `Z`. It also checks this statement but with `mother(Z, Y)` because the person might be a brother of a female, which would mean mother.

```Prolog
	cousin(X, Y)
```

This method takes inputs `X` and `Y` and checks to see if person `X` is a cousin to person `Y`. It does this by first making a call to the `parent(X, Z)` method for some person `Z` and the `uncle(Z, Y)` method to see if person `Z` is a son and an uncle to person `Y`. If this relationship is satisfied, then we know that `X` must be a cousin to person `Y`. This method is also overloaded to check if rather than an uncle, that person `Z` is an aunt to person `Y`.


Part 2
=======

```Prolog
	isnatural(X)
```

This determines whether or not a given number `X` is a natural number. It does so by first checking if `X` is equal to 0. If it is, it returns true. Otherwise, it then checks that `X` > 0, and recursively calls the `isnatural(X-1)` method, each time through reducing the value of `X` by 1. However, rather than explicity writing `X-1`, we have to use a second variable `Y` and set that equal to `Y-1` via the statement `Y is X-1`.

```Prolog
	factorial(A, B)
```

This method takes inputs `A` and `B` and computes the factorial. It does so by first checking to see if `A` is 0. If it is, the method returns 1. Otherwise, while `A` > 0, we set `C` equal to `A` - 1 and call the `factorial(C, D)` recurively, each time setting `B` equal to `A` * `D` via the statement `B is A * D`. This is so that each time through the function, we store the multiplication value in the factorial to compute the result `n!`.

```Prolog
	fibonacci(A, B)
```

A classic recursive function, this method takes inputs `A` and `B` and computes the fibonacci numbers based on the input `A`. It first checks to see if `A` is equal to 0 and if it is, returns 1. It then checks to see if `A` is equal to 1. If it is, it also returns 1. Otherwise, we set `C` equal to `A` - 1, `D` equal to `A` - 2, and recursively call `fibonacci(C, E)` and `fibonacci(D, F)`. This mimicks the `fibonacci(n-1) + fibonacci(n-2)` expression. The results of each method call are stored in `B` via the expression `E + F`.


Part 3
=======

```Prolog
	fulfilledCSMajor(X)
```

This method determines whether a student `X` has fulfilled the given B.S. in Computer Science [requirements](http://college.wfu.edu/cs/undergraduate-program/planning-for-a-cs-major) at Wake Forest University. This method uses the following methods:

```Prolog
	math(X)
```

This method simply checks to see if a student has taken the necessary math requirements for the B.S. It does so by checking if the student has taken Math 112, Math 117, and one of the following: Math 121, Math 205, Math 206. This calls the `option(X)` method that checks to see if one of the above has been satisfied. 

```Prolog
	cscore(X)
```

This method checks to see if the student has taken the core CS requirement classes. It simply makes multiple calls to the `taken(Student, Class, Number)` method and if all evaluate to true, then we know the student has taken all of the necessary core requirements.

```Prolog
	csupperlevel(X)
```

Lastly, this method is used to determine if the student `X` has taken four separate 300 level CS courses. It does so by making four different calls to the `taken` method, seeing if any of the inputs match the `taken` definitions of approved 300 level classes. It assures that each `A`,`B`,`C`,`D` inputs are within the constraints of a 300 level course and not equal to 399 and also not equal to each other to ensure they are distinct.




