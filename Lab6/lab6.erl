%
%
%	Author: Grant McGovern
%	Date: 20 Feb 2015 
%
%	
%	~ Lab 6: Introduction to Erlang Pt. II ~
%
%

-module(lab6).
-export([
	productOfPairs/1,
	polyadd/2,
	polydiff/2,
	polyeval/2,
	member/2, 
	delete/2,
	insert/2, 
	largest/1,
	selectionSort/1, 
	map/2, 
	flipSign/1, 
	flipSigns/1,
	truncateWord/1,
	truncateWords/1
	]).


% Method to take an input list of numbers and outputs a list 
% which contains the product of each two ordered entries in the
% input list.
productOfPairs([]) ->
	[];
productOfPairs([X]) ->
	[X];
productOfPairs([X | Y]) ->
	[X * hd(Y)] ++ productOfPairs(tl(Y)).



% Method to add together two polynomials
polyadd([], []) ->
	[];
polyadd([X], []) ->
	[X];
polyadd([], [Y]) ->
	[Y];
polyadd([X | Y], []) ->
	[X | Y];
polyadd([], [Y | YX]) ->
	[Y | YX];
polyadd([X | X1], [Y | Y1]) ->
	[X + Y] ++ polyadd(X1, Y1).


% Method to find the difference between two polynomials 
polydiff([], []) ->
	[];
polydiff([X], []) ->
	[X];
polydiff([], [Y]) ->
	[0 - Y];
polydiff([X | X1], []) ->
	[X | X1];
polydiff([], [Y | Y1]) ->
	[0 - Y] ++ polydiff([], Y1);
polydiff([X | X1], [Y | Y1]) ->
	[X - Y] ++ polydiff(X1, Y1).


% Method to evaluate a polynomial --> using Horner's Rule
polyeval([], _) ->
	0;
polyeval([X | X1], Y) ->
	X + Y * polyeval(X1, Y).


% A simple contains method, to see if a list contains an item
member(_, []) ->
	false;
member(X, [X | _]) ->
	true;
member(X, [_ | Y]) ->
	member(X, Y).


% Method to delete an item in a list 
delete(_, []) ->
	[];
delete(X, LIST) ->
	EXISTS = member(X, LIST), 

	case EXISTS of 
		true -> if
					X == hd(LIST) ->
						tl(LIST);
					true ->
						[hd(LIST)] ++ delete(X, tl(LIST))
					end;
		false -> LIST
	end.


% Method to insert an element into a list 
insert(X, S) ->
	EXISTS = member(X, S),

	case EXISTS of 
		true -> S;
		false -> [X] ++ S
	end.


% Method to determine the largest element in a list
largest([]) ->
	[];
largest(LIST) ->
	TAIL = tl(LIST),
	HEAD = hd(LIST),
	
	if
		TAIL == [] -> 
			HEAD;
		true ->
			if (HEAD > hd(TAIL)) ->
				largest([HEAD | tl(TAIL)]);
			true ->
				largest(TAIL)
		end
	end.


% Methodt to map two elements together
map(_, []) ->
	[];
map(Y, [X | X1]) ->
	[Y(X) | map(Y, X1)].


% Method to flip sign (-/+) of an input
flipSign(N) ->
	N * -1.
% Leveraging the map method, performs the flipSign() method on each element
% of an inputted list 'LIST'
flipSigns(LIST) ->
	map(fun flipSign/1, LIST).


% Method to implement selection sort algorithm 
selectionSort([]) -> [];
selectionSort(LIST) ->
	LARGEST = largest(LIST), 
	VALUE = delete(LARGEST, LIST), 

	[LARGEST] ++ selectionSort(VALUE).


% Method to return a (chopped) list, based on an input N
chop([X | X1], N) ->
	case (N == 0) of
		true -> [];
		false ->
			[X] ++ chop(X1, N-1)
	end.

% Method to truncate a word
truncateWord(LIST) ->
	case (length(LIST) < 5) of
		true -> LIST;
		false -> chop(LIST, 4)
	end.

truncateWords(LIST) ->
	map(fun truncateWord/1, LIST).















	


