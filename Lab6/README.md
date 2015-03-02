# Lab 6

<b>Author:</b> Grant McGovern 

<b>Date:</b> 17 Feb 2015 

<b>Description:</b> Introduction to Erlang lab.


Note: Wrote in an .md (markdown file to comply with Github README standards)

URL: https://github.com/g12mcgov/CSC231/tree/master/Lab6



Part 1a:
=======

```Erlang
	productOfPairs(LIST)
```

This method takes an input list 'LIST' and computes the product of pairs by multiplying the head of the list by the second element (otherwise known as the 2nd element). This method checks for multiple conditions:
	
	1. Empty List -> returns an empty list.
	2. Single Element List -> returns single element.
	3. Multi-element List -> recursive implementation.


Part 2a:
=======

```Erlang
	polyAdd(LIST, LIST)
```

This method takes two input lists 'LIST' x2 and adds together two polynomials. It adds together the heads of each list and advances the head by `1` each time, such that it increments through the list. This method checks for multiple edge-cases:
	
	1. Two Empty Lists -> returns an empty list because an empty list added to an empty list is an empty list.
	2. Single Element List -> If one list contains one element, return just the single element.
	3. Multiple Element List w/ Empty List -> returns just the multiple element list.

Part 2b:
=======

```Erlang
	polydiff(LIST, LIST)
```

Like the above method, this method takes two input lists 'LIST' x2 and subtracts the two polynomials. It does so by taking the heads of each list and advancing by `1` each time, subtracting the values from each other as it incremements through the list. It recursively calls with the remaining tails (`X1`, `Y1`). This method checks for multiple edge-cases:
	
	1. Two Empty Lists -> returns an empty list because an empty list subtracted from an empty list is an empty list.
	2. Single Element List -> If one list contains one element, return just the single element.


Part 2c:
=======

```Erlang
	polyeval(LIST, LIST)
```

This method takes two input lists `LIST` x2. It follows [Horners Rule for Polynomials](http://en.wikipedia.org/wiki/Horner%27s_method). With each recursive call, the value of the list is added to X, so it simulates an "inside first" algorithm. This method checks for one edge case, which is when the input list (polynomial) has an empty head. In this case, the method just returns 0.

Part 3a:
=======

```Erlang
	member(X, [X|_])
```

This method takes an input `X` and sees if it is a member of the list passed in. It first checks to see if the head of the list is the element `X` for which we are searching and if so, returns true. Otherwise, the method recursively looks for the element `X` by removing the head and examining the tail. This method also checks for the empty list edge-case:
	
	1. Empty List -> returns false (impossible to contain item). 


Part 3b:
=======

```Erlang
	delete(X, LIST)
```

This method takes an input `X` and a list `LIST` and removes the value `X` from the list. It first checks to see if the LIST is an empty list. If it is, it returns the empty list because it's impossible to delete something from an empty list. Otherwise, if calls the `member(X, LIST)` method to see if the element `X` is in the list. If it is, it checks to see the head of the list is equal to the input `X`. If so, it returns the tail. Otherwise, it searches the list by checking the head value each time, until it finds the input `X`.


Part 3c:
=======

```Erlang
	insert(X, LIST)
```

This method an element input `X` and list input `LIST`. It first makes a call to the `member(X, LIST)` method to see if the element `X` already exists in the list. If this is true, it simply returns the original list. Otherwise, if this is false, the method appends the element `X` to the existing list and return it. 
 

Part 4:
=======

```Erlang
	largest(LIST)
```

This method finds the largest element in a list `LIST`. The method first checks if the tail is empty and if true, returns the head. Otherwise, it compares the head to the head of the tail (the 2nd element) and depending on which is greater, it calls itself <i>recursively</i> with the head merged onto the tail of the tail, or on just the tail. 

Part 5:
=======

```Erlang
	selectionSort(LIST)
```

Using the provided hangout, the method first searches for the largest element by making a call to the `largest(LIST)` method. It then deletes the `LARGEST` element from the list using the `delete(X, LIST)` method and adds this element to the front of the list. It recursively peforms this action until the list has been fully sorted. It checks for one special edge-case which is when there is an empty list passed to the method. In this case, the method simply returns an empty list because an empty list sorted is an empty list.

Part 6a:
=======

```Erlang
	flipSign(N)
```

This method simply takes an input `N` and flips the sign. I.e., if the sign is negative, it will become positive and if its positive, it will become negative. The method performs 


