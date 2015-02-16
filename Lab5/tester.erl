-module(tester).
-export([test1a/0,test1b/0,test1c/0,test2a/0,test2b/0,test2c/0,test2d/0,test2e/0]).

test1a() ->
	io:write(lab5:fourthPower(2)), 
	io:format("\n"), 
	io:write(lab5:fourthPower(3)), 
	io:format("\n").

test1b() ->
	io:write(lab5:fourthPower2(2)), 
	io:format("\n"), 
	io:write(lab5:fourthPower(3)), 
	io:format("\n").

test1c() ->
	io:write(lab5:median3({1.5,2.5,3.5})),
	io:format("\n"), 
	io:write(lab5:median3({2.5,1.5,3.5})),
	io:format("\n"), 
	io:write(lab5:median3({1.5,3.5,2.5})),
	io:format("\n"), 
	io:write(lab5:median3({2.5,2.5,2.5})),
	io:format("\n").

test2a() ->
	io:write(lab5:factorial(0)),
	io:format("\n"), 
	io:write(lab5:factorial(1)),
	io:format("\n"), 
	io:write(lab5:factorial(2)),
	io:format("\n"), 
	io:write(lab5:factorial(3)),
	io:format("\n"), 
	io:write(lab5:factorial(4)),
	io:format("\n"), 
	io:write(lab5:factorial(5)),
	io:format("\n").

test2b() ->
	io:write(lab5:getNth([3,2,1],1)),
	io:format("\n"),
	io:write(lab5:getNth([3,2,1],2)),
	io:format("\n"),
	io:write(lab5:getNth([3,2,1],3)),
	io:format("\n").

test2c() ->
	io:write(lab5:logarithm(3,27)),
	io:format("\n"),
	io:write(lab5:logarithm(4,16)),
	io:format("\n"),
	io:write(lab5:logarithm(2,2)),
	io:format("\n").

test2d() ->
	io:write(lab5:largest([1.0])),
	io:format("\n"),
	io:write(lab5:largest([2.0,1.0])),
	io:format("\n"),
	io:write(lab5:largest([2.0,1.0,3.0,2.5])),
	io:format("\n"),
	io:write(lab5:largest([2.0,3.0,2.5,1.0])),
	io:format("\n"),
	io:write(lab5:largest([2.0,2.5,3.0,3.5])),
	io:format("\n").

test2e() ->
	io:write(lab5:contains("hello", [])),
	io:format("\n"),
	io:write(lab5:contains("hello", ["hello"])),
	io:format("\n"),
	io:write(lab5:contains("hello", ["world"])),
	io:format("\n"),
	io:write(lab5:contains("hello", ["hello", "world"])),
	io:format("\n"),
	io:write(lab5:contains("funny", ["hello", "world"])),
	io:format("\n"),
	io:write(lab5:contains(1,[2,3,1])),
	io:format("\n").