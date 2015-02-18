%
%	Author: Grant McGovern
%	Date: 15 Feb 2015
%	
%	~ Lab 5 : Introduction to Erlang ~
%
%
%

-module(lab5).
-export([fourthPower/1, square/1, fourthPower2/1, median3/1, cycleOnce/1, factorial/1, getNth/2, logarithm/2, largest/1, contains/2]).

%% 1a %%
% Method to compute x^4 %
fourthPower(N) -> 
	N * N * N * N.

% Method to compute x^2 %
square(N) ->
	N * N.

%% 1b %%
% Alternative method to compute x^4 %
fourthPower2(N) -> 
	square(N) * square(N).

% Method to find the maximum value of 3 inputs %
max3(A, B, C) ->
	if
		A > B -> if
					A > C -> A;
					true -> C
				end;
		true -> if
					B > C -> B;
					true -> C
				end
	end.

% Method to find the minimum value of 3 inputs %
min3(A, B, C) ->
	if
		A < B -> if
					A < C -> A;
					true -> C
				end;
		true -> if
					B < C -> B;
					true -> C
				end
	end.

%% 1c %%
% Method to find the median of three numbers %
median3(TUPLE) -> 
	FIRST = element(1, TUPLE),
	SECOND = element(2, TUPLE),
	THIRD = element(3, TUPLE),
	
	MEDIAN = (FIRST + SECOND + THIRD) - min3(FIRST, SECOND, THIRD) - max3(FIRST, SECOND, THIRD),

	% Return MEDIAN %
	MEDIAN.

%% 2a %%
% Method to find the factorial of an input (N) %
% We can overload to accomodate a 0! or 1! case %
factorial(0) -> 1;
factorial(1) -> 1;	
factorial(N) -> 
	N * factorial(N-1).


cycleOnce(L) ->
	tl(L) ++ [hd(L) | []].

%% 2b %%
% Method to return the nth item of a list using above method, cycleOnce() */
getNth(INPUT, N) -> 
	% Iterates through the list and returns the list %
	% getNth(cycleOnce(INPUT), N-1). %
	%RES = lists:nth(N, LIST), 
	%RES.

	HEAD = hd(INPUT),

	if
		1 == N ->
			HEAD;
		1 < N ->
			getNth(cycleOnce(INPUT), N-1);
		true ->
		    false
    	end.

%% 2c %% 
% Logarithm Function %
logarithm(X, Y) -> 
	case X == Y of
		true -> 1;
		false -> 1 + logarithm(X, Y/X)
	end.


%% 2d %%
% Method to return the largest element in a list %
largest(INPUT) -> 
	TAIL = tl(INPUT),

	if
		% If the tail is empty, return the head %
		TAIL == [] ->
			hd(INPUT);
		hd(INPUT) > hd(TAIL) ->
			largest([hd(INPUT)] ++ tl(tl(INPUT)));
		true ->
			largest(tl(INPUT))
	end. 


%% 2e %%
% Method to determine if a list returns an item (return a boolean) %
contains(DATA, LIST) -> 
	if
		DATA == hd(LIST) ->
			true;
		LIST == [] ->
			false;
		tl(LIST) == [] ->
			false;
		true ->
			contains(DATA, tl(LIST))
	end.



