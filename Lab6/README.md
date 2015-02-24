# Lab 6

<b>Author:</b> Grant McGovern 

<b>Date:</b> 24 Feb 2015 

<b>Description:</b> Introduction to Erlang lab.


Note: Wrote in an .md (markdown file to comply with Github README standards)

URL: https://github.com/g12mcgov/CSC231/tree/master/Lab6



Part 1a:
=======

```Erlang
	productOfPairs(LIST)
```

This method takes an input list 'LIST' and computes the product of pairs by multiplying the head of the list by the second element (otherwise known as the head of the tail). This method checks for multiple conditions:
	
	1. Empty List -> returns an empty list.
	2. Single Element List -> returns single element.
	3. Multi-element List -> recursive implementation.

<b>Tests:

Ran it against odd number of inputs such as `[1,2,3]` and it returned `[2,3]`.

<b>Additional Tests:</b>
	
None.

Part 2a:
=======

```Erlang
	polyAdd(LIST, LIST)
```

This method takes two input lists 'LIST' x2 and adds together two polynomials. It adds together the heads of each list and advances the head by `1` each time, such that it increments through the list. This method checks for multiple edge-cases:
	
	1. Two Empty Lists -> returns an empty list because an empty list added to an empty list is an empty list.
	2. Single Element List -> If one list contains one element, return just the single element.
	3. Multiple Element List w/ Empty List -> returns just the multiple element list.

<b>Tests:</b>

I tested this method by calling `polyadd([-2, -5], [-8, 11, 20])` it return the output 10, 6, 15 which is correct. This method was also tested with the both inputs being empty lists as well as only one input being an empty list, and it passed both cases.

<b>Additional Tests:</b>

None.

Part 2b:
=======

```Erlang
	polydiff(LIST, LIST)
```

Like the above method, this method takes two input lists 'LIST' x2 and subtracts the two polynomials. It does so by taking the heads of each list and advancing by `1` each time, subtracting the values from each other as it incremements through the list. It recursively calls with the remaining tails (`X1`, `Y1`). This method checks for multiple edge-cases:
	
	1. Two Empty Lists -> returns an empty list because an empty list subtracted from an empty list is an empty list.
	2. Single Element List -> If one list contains one element, return just the single element.

<b>Tests:</b>

Tested with the same input lists as above (containing negative numbers) `polydiff([-2, -5], [-8, 11, 20])` and this returned -10, -14, -25. Like above, this method was also tested with the empty sets and got back the empty set. Additionally, I tested for whether one list was empty and the other contained one element (and vice versa) and both cases passed.

<b>Additional Tests:</b>

None.


Part 2c:
=======

```Erlang
	polyeval(LIST, LIST)
```

This method takes two input lists `LIST` x2. It follows [Horners Rule for Polynomials](http://en.wikipedia.org/wiki/Horner%27s_method). With each recursive call, the value of the list is added to X, so it simulates an "inside first" algorithm. This method checks for one edge case, which is when the input list (polynomial) has an empty head. In this case, the method just returns 0.

<b>Tests:</b>

Tested using a special input where the first input is a list and the second input is 0. For example: `polyeval([2, -3, -4], 0)`. In this case, the method returned 2, which makes sense because the 2 is the constant in the polynomial. Also tested with the empty set, and any input `X` which yields `0`.


<b>Additional Tests:</b>

None.



Part 3a:
=======

```Erlang
	member(X, LIST)
```

This method takes an input `X` and sees if it is a member of the list passed in. It first checks to see if the head of the list is the element `X` for which we are searching and if so, returns true. Otherwise, the method recursively looks for the element `X` by removing the head and examining the tail. This method also checks for the empty list edge-case:
	
	1. Empty List -> returns false (impossible to contain item). 

<b>Tests:</b>

Simply ran tests from `lab6Tester.erl`.

<b>Additional Tests:</b>

Tested the empty set which returned false.


Part 3b:
=======

```Erlang
	delete(X, LIST)
```

This method takes an input `X` and a list `LIST` and removes the value `X` from the list. It first checks to see if the LIST is an empty list. If it is, it returns the empty list because it's impossible to delete something from an empty list. Otherwise, if calls the `member(X, LIST)` method to see if the element `X` is in the list. If it is, it checks to see the head of the list is equal to the input `X`. If so, it returns the tail. Otherwise, it searches the list by checking the head value each time, until it finds the input `X`.

<b>Tests:</b>

Tested for a case where the list has multiple duplicates. The test I performed was a call to `delete(2, [4, 5, 2, 2])` which returned `[4, 5, 2]`. I also checked for deletion against an empty list and this simply returned the empty list.

<b>Additional Tests:</b>

None.


Part 3c:
=======

```Erlang
	insert(X, LIST)
```

This method an element input `X` and list input `LIST`. It first makes a call to the `member(X, LIST)` method to see if the element `X` already exists in the list. If this is true, it simply returns the original list. Otherwise, if this is false, the method appends the element `X` to the existing list and returns it. 

<b>Tests:</b>

Tested the case where an element is passed in along with an empty set. An example call to this is `insert(5, [])`, which yields `[5]`.

<b>Additional Tests:</b>

None.


Part 4:
=======

```Erlang
	largest(LIST)
```

This method finds the largest element in a list `LIST`. The method first checks if the tail is empty and if true, returns the head. Otherwise, it compares the head to the head of the tail (the 2nd element) and depending on which is greater, it calls itself <i>recursively</i> with the head merged onto the tail of the tail, or on just the tail. 

<b>Tests:</b>

Tested a case where there is multiple "largest" inputs. For example, making a call to `largest([4, 4, 4])` will return `4`. Also tested the method call using negative numbers, and the value returned the correct value. 

<b>Additional Tests:</b>

Also tested using the empty list input and it returned the empty list.

Part 5:
=======

```Erlang
	selectionSort(LIST)
```

Using the provided hangout, the method first searches for the largest element by making a call to the `largest(LIST)` method. It then deletes the `LARGEST` element from the list using the `delete(X, LIST)` method and adds this element to the front of the list. It recursively peforms this action until the list has been fully sorted. It checks for one special edge-case which is when there is an empty list passed to the method. In this case, the method simply returns an empty list because an empty list sorted is an empty list.

<b>Tests:</b>

Tested against the empty list and it returned the empty list. Also tested against a list containing multiple values and it passed. For example, if the method call was `selectionSort[2,4,5,0,9,4,5,5])` it should (and did) return `[0,2,4,4,5,5,5,9]`. Also tested with a list containing both positive and negative numbers and it passed both cases.

<b>Additional Tests:</b>

None.


Part 6a:
=======

```Erlang
	flipSign(N)
```

This method simply takes an input `N` and flips the sign. I.e., if the sign is negative, it will become positive and if its positive, it will become negative. This method performs this action by multiplying a negative one `(-1)`.

```Erlang
	flipSigns(LIST)
```

Using the above method and the defined `map(X, LIST)` method to perform a `flipSign()` on each element in the list `LIST`. It makes use of the `Erlang` `fun` function which is basically an anonymous function (a lot like `lamdas` in Python). The end result of this method is a list where each member of the list has a flipped sign.


<b>Tests:</b>

Tested `flipSigns(LIST)` against an empty input `LIST`. It returned the empty list as expected. Additionally tested the case where an element in the list was `0`, and it successfully maintained this element to `0`. 

<b>Additional Tests:</b>

None.


Part 6b:
=======

```Erlang
	truncateWord(LIST)
```

This method takes an input list `LIST` and it does by making use of the `chop(LIST, N)` method. The `chop(LIST, N)` method allows us to return the first `N` elements of a list, by recursively building a list and decrementing N by 1 each time. The `truncateWord(LIST)` method then first checks to see if the length of the list is less than 5. If this is true, then it simply returns the original list. If this is false, then we <b>do</b> in fact need to truncate it, so we call the `chop(LIST, N)` method. 

```Erlang
	truncateWords(LIST)
```

Like the above explanation for the `flipSigns(LIST)` method, this method uses the `map(X, LIST)` method along with the `fun` anonymous function to truncate each value in the list. 

<b>Tests:</b>

Simply ran the test cases as defined `lab6Tester.erl`. This contained also possible test cases (small word, large word, non-existent word).

<b>Additional Tests:</b>

None.
