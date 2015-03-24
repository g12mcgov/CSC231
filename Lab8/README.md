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

This method takes inputs `X` and `Y` and attempts to see if `X` is an aunt to `Y`. It does this by checking if the following condition is satisfied: `sister(X, Z), mother(Z, Y)` is satisfied for some person `Z`. 


To be continued...

