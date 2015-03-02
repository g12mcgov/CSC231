# Lab 7 

<b>Author:</b> Grant McGovern 

<b>Date:</b> 2 March 2015 

<b>Description:</b> Introduction to Erlang Lab 7.


Note: Wrote in an .md (markdown file to comply with Github README standards)

URL: https://github.com/g12mcgov/CSC231/tree/master/Lab7



Part 1a:
=======

```Erlang
	extractEvens(LIST)
```

This method takes an input list `LIST` and builds a new list only containing even numbers. It makes use of the `isEven` helper method which checks to see if a number is even by taking its remainder when divided 2. If it's 0, we know it's even, otherwise it's prime. It also makes use of the filter helper method because we want to keep certain elements in the list.

Part 1b:
=======

```Erlang
	isEven(ITEM)
```

This method takes an input number `ITEM` and determines whether or not it's even. We can check for this by dividing the `ITEM` by 2 and seeing if it has a reminder equal to zero. If it does, we return true because it is in fact even, otherwise, we return false because it's odd.

Part 1c:
=======

```Erlang
	extractAWords(LIST)
```

This method takes an input list of strings `LIST` and returns a list with all of the words beginning with `a` or `A`. We use the filter method again because we want to keep all elements containing `a` or `A`. It applies the `isAWord` method to each element in the by leveraging the `fun` keyword.

```Erlang
	isAWord(ITEM)
```

This method takes in a string `ITEM` and checks to see if the first character is either `a` or `A`. It finds the first element by using the `hd()` method. We use a case statement here so that if the first character is `a` or `A`, then we return true, otherwise, return false. To access individual characters we must use the `$` Erlang syntax such as `$a` for `a` and `$A` for `A`.


Part 1d:
=======

```Erlang
	logicalOR(LIST)
```

This method searches an input list `LIST` to see if any one in the list is `true`. In the event that the list contains more than one `true`, then `logicalOR` is still true, otherwise, if all of the items in the list are false, then the `logicalOR` is false. This method also makes use of the `filter` and `checkIfFalse` method. Using the `filter` method, we iterate through the list checking if each element is `true` or `false`. It then filters out all of the elements that are `true` and we are left with either the empty list (`[]`) or a list containing only `trues`.

```Erlang
	checkIfFalse(ITEM)
```

This method takes an input `ITEM` and checks to see whether or it's true. If it's true, it returns true, otherwise it returns false.


Part 1e:
=======

```Erlang 
	longStrings(LIST)
```

This method takes an input list `LIST` and uses the `filter` method to extract elements (strings) from the list whose length is greater than 3. It also makes use of the `fun` anonymous function in Erlang, which allows the filter method to applied over the entire list.



```Erlang
	checkIfLong(LIST)
```

This method takes an input list `LIST` and determines whether or not it's less than 3 characters long. If the condition evaluates to `true` (using the built-in `length()` method), then the method returns `true`, otherwise it returns `false`.


Part 3b:
=======

```Erlang
	strcat(LIST)
```

This method takes an input list `LIST` and concatenates all of the values into a single string. Here we use the `reduce` method, combined with the `fun` keyword to apply the method over each element in the list. The `reduce` method takes each element and effectively reduces them into one single element.

```Erlang
	concatenate(STRING, STRING)
```

This method simply takes 2 input strings `STRING` x2 and concatenates them together using the `++` Erlang operator.

Part 1f:
=======

```Erlang
	max(LIST)
```

This method takes an input list `LIST` and finds the maximum (numerical) value in the list. We can leverage the reduce function here but reducing the list down to a single <b>maximum</b> value.

```Erlang
	findMax(ELEMENT, ELEMENT)
```

This method takes two numerical elements `ELEMENT` x2 and determines the max (or largest) of the two. In the case the first element is bigger than the second element, we return the first element. If the second element is greater than the first element, we return the second element. Lastly, if the two items are equal, we return the first element because it does not matter which one we return.
 

Part 2:
=======

```Erlang
	findInTree(ITEM, TREE)
```

This method takes an item input `ITEM` and a Binary Tree input `TREE`. It then calls the lookup method to search the tree for the item `ITEM`. Using the `#` operator, we are able to access the field and pass the root node of the Binary Tree. Like any recursive method involving trees, we need to pass the root node so that we can start at the very top of the tree.

```Erlang
	lookup(_, null)
```

This method searches for a given node. If the passed in node is `null`, then we can only return `false` since it has no children nodes and as a parent node, it's nonexistent.


```Erlang
	lookup(ITEM, TREE)
```

This method searches for a given node `ITEM`. We first make a check to see if the current node is the node which we are looking for via using the `==` comparator. Like the above `findInTree` method, we also use the `#` symbol to access the field of the node and the `.` to access it's value. If this conditional evaluates to false, we recursively traverse the left side of the tree searching for the node. If this fails, we then recursively search the right side of the tree for the given value. Finally, if the method fails to find the node, then it does not exist in the tree and the method will return `false`. This form of tree traversal is known as <b>pre-order</b> traversal.


Part 3:
=======

```Erlang
	evaluate(LIST)
```

This method takes an input list `LIST` and evaluates the tree by recognizing nodes which contain `operators` (such as +, -, *, /) and nodes which contain `numerical values` (such as 1,2,3,4, etc...). In then uses the `find` method to determine where in the tree the following operations should be performed. Like the above methods, it also makes use of the `#` sign to access the field of the binary tree and the `.` operator to access the root node. 


```Erlang
	find(LIST)
```

This method takes an input list `LIST` and determines the current operators by using a series of if statements and `#` symbols to access the node values. If we come across a matched aritmetrics operator, we perform that operation by recursively calling itself on the children nodes until no more operators exist. It will then return the given value, calling the `stringToFloat` method against the value to convert that node's string value to a numerical float value. This value will then be passed to the top of the method definition, and the operation will be evaluated.

