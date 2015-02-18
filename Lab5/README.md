# Lab 5

<b>Author:</b> Grant McGovern 

<b>Date:</b> 17 Feb 2015 

<b>Description:</b> Introduction to Erlang lab.


Note: Wrote in an .md (markdown file to comply with Github README standards)

URL: https://github.com/g12mcgov/CSC231/tree/master/Lab5



Part 1a:
=======

```Erlang
	fourthPower(N)
```

This method takes an input `N` and simply returns N to the fourth power. It does so by multiplying N by itself 4 times.

Part 1b:
=======

```Erlang
	fourthPower2(N)
```

This method takes an input `N` and computes the fourth power in an alternative way from above. It makes use of an additional method `square(N)` which computes N squared, and finds N to the fourth power by doing `square(N) * square(N)`.

Part 1c:
=======

```Erlang
	median3(TUPLE)
```

This method takes a tuple of size 3 as an argument. It then extracts each element of the tuple, and finds the <b>max</b> and <b>min</b> of the tuple by calling two methods: `max3(A, B, C)` and `min3(A, B, C)`. It then computes the median (middle number) by adding the 3 inputs together, and subtracting the <b>min</b> and the <b>max</b>. The remaining element has to be the median in a set of 3. 


Part 2a:
=======

```Erlang
	factorial(N)
```

This method <i>recursively</i> computes the factorial of an input `N`. The method is overloaded to handle inputs 0 and 1, which both return 1. The recursive definition multiplies N by factorial(N-1), which decrements N by 1 which each call. N is consistently multiplied by the value of factorial(N-1) which is computed as each method call is put onto the stack.


Part 2b:
=======

```Erlang
	getNth(INPUT, N)
```

This method finds the `Nth` element in a list `INPUT`. It first finds the head of the list, then sees if `N` happens to be 1, in which case it returns the first element (HEAD). Otherwise, if N is greater than 1, the method <i>recursively</i> calls itself, cycling through the list, decrementing N by 1 with each call until the correct element is returned. With each recursive call, the original list is passed as an input.


Part 2c:
=======

```Erlang
	logarithm(X, Y)
```

This method takes two inputs, `X` and `Y`, where `X` is the base and `Y` is the value. It first checks if `X` and `Y` are the same, and if they are, returns 1 because any number raised to the first power is itself. Otherwise, the method <i>recurively</i> calls itself, each time dividing the value by the base and adding it to 1, so as to keep track of how calls we've made until we hit the value 1. This ending value is our logarithm value.

Part 2d:
=======

```Erlang
	largest(INPUT)
```

This method finds the largest element in a list `INPUT`. The method first checks if the tail is empty and if true, returns the head. Otherwise, it compares the head to the head of the tail (the 2nd element) and depending on which is greater, it calls itself <i>recursively</i> with the head merged onto the tail of the tail, or on just the tail. 

Part 2e:
=======

```Erlang
	contains(DATA, LIST)
```

This method determines whether or not a list `INPUT` contains an element called `DATA`. It first checks if the `DATA` is the head of the list, and if so, returns `true`. It then checks if the list is empty, and if so, returns false, because the `DATA` cannot exist in an empty list. Otherwise, it checks if the tail of the list is empty and returns false. Finally, if none of the above conditions are satisfied, it <i>recursively</i> calls itself, each time passing in the `DATA` as a parameter and the tail of the list. The tail is incremented each time until finally the `DATA` is the head of the list and the method returns `true` otherwise `false`.


