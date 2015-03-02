%
%
%
%	Author: Grant McGovern 
%	Date: 27 Feb 2015 
%
%	~ Introduction to Erlang: Lab 7 ~
%
%
%

-module(lab7).
-export([map/2,
		reduce/2,
		filter/2,
		getStringTree/0,
		stringToFloat/1,
		getExpression1/0,
		getExpression2/0,
		getExpression3/0,
		isEven/1,
		isAWord/1,
		extractEvens/1, 
		extractAWords/1,
		checkIfFalse/1,
		logicalOR/1,
		checkIfLong/1,
		longStrings/1,
		concatenate/2,
		strcat/1,
		findMax/2,
		max/1, 
		find/1,
		evaluate/1, 
		lookup/2,
		findInTree/2
		]).


%% Given with the lab %%
-record(binaryTreeNode, {value,left=null,right=null}).
-record(binaryTree, {rootNode=null}).

getStringTree() -> 
#binaryTree{rootNode = #binaryTreeNode{value = "Erlang", left = #binaryTreeNode{value = "as", left = #binaryTreeNode{value = "a",left = null,right = null},right = #binaryTreeNode{value = "in",left = null,right = null}},right = #binaryTreeNode{value = "types",left = null, right = null}}}.

getExpression1() ->
#binaryTree{rootNode = #binaryTreeNode{value="2.0"}}.

getExpression2() ->
#binaryTree{rootNode = #binaryTreeNode{value="+",left=#binaryTreeNode{value="2.0"},right=#binaryTreeNode{value="4.0"}}}.

getExpression3() ->
#binaryTree{rootNode = #binaryTreeNode{value="/",left=#binaryTreeNode{value="+", left=#binaryTreeNode{value="3.0"},right=#binaryTreeNode{value="2.0"}},right=#binaryTreeNode{value="*",left=#binaryTreeNode{value="2.0"},right=#binaryTreeNode{value="2.5"}}}}.

stringToFloat(X) -> 
	element(1,string:to_float(X)).

map(_,[]) ->
	[];
map(F,[X|XS]) ->
	[F(X)|map(F,XS)].

reduce(_, [A]) ->
	A;
reduce(F, [A|AS]) ->
	F(A, reduce(F,AS)).

filter(_,[]) ->
	[];
filter(P,[X|XS]) ->
	case P(X) of 
	true ->
		 [X|filter(P,XS)];
	_ -> 
		filter(P,XS)
	end.


%% User defined methods %%

%% Helper method for the extractEvens method %% 
%% Checks to see if a specific input `X` is even %%
isEven(X) ->
	case (X rem 2) == 0 of 
		% Then it's even
		true -> true;
		% Otherwise, it's odd
		false -> false
	end.

%% Helper method for the extractAWords method %% 
%% checks to see if a specific input `X` has %% 
%% begins with either an `a` or `A`.
isAWord(INPUT) ->
	X = hd(INPUT),
	
	case (X == $a orelse X == $A) of
		true -> true;
		false -> false
	end.

checkIfFalse(ITEM) ->
	case ITEM of
		true -> true;
		false -> false
	end.

checkIfLong(LIST) ->
	case (length(LIST) < 4) of
		true -> false;
		false -> true
	end. 

concatenate(STRING1, STRING2) ->
	STRING1 ++ STRING2.

findMax(ELEMENT1, ELEMENT2) ->
	if
		(ELEMENT1 > ELEMENT2) ->
			ELEMENT1;
		(ELEMENT1 < ELEMENT2) ->
			ELEMENT2;
		% In the case they're the same %
		true ->
			ELEMENT1
	end.



%% Methods define for lab %% 
extractEvens(LIST) ->
	filter(fun isEven/1, LIST).

extractAWords(LIST) ->
	filter(fun isAWord/1, LIST).

logicalOR(LIST) ->
	ELEMENT = filter(fun checkIfFalse/1, LIST),

	case (ELEMENT == []) of
		true -> false;
		false -> true
	end.

longStrings(LIST) ->
	filter(fun checkIfLong/1, LIST).

strcat(LIST) ->
	reduce(fun concatenate/2, LIST).

max([]) -> [];
max(LIST) -> 
	reduce(fun findMax/2, LIST).


findInTree(S, T) ->
	lookup(S, T#binaryTree.rootNode).


lookup(_, null) -> false;
lookup(S, T) ->
	(S == T#binaryTreeNode.value)

	or lookup(S, T#binaryTreeNode.left)
	or lookup(S, T#binaryTreeNode.right).

evaluate(TREE) ->
	find(TREE#binaryTree.rootNode).

find(TREE) ->
	if	
		TREE#binaryTreeNode.value == "+" ->
			find(TREE#binaryTreeNode.left) + find(TREE#binaryTreeNode.right);
		TREE#binaryTreeNode.value == "-" ->
			find(TREE#binaryTreeNode.left) - find(TREE#binaryTreeNode.right);
		TREE#binaryTreeNode.value == "*" ->
			find(TREE#binaryTreeNode.left) * find(TREE#binaryTreeNode.right);
		TREE#binaryTreeNode.value == "/" ->
			find(TREE#binaryTreeNode.left) / find(TREE#binaryTreeNode.right);
		true ->
			stringToFloat(TREE#binaryTreeNode.value)
	end.










