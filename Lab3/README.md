# Lab 3

<b>Author:</b> Grant McGovern 

<b>Date:</b> 3 Feb 2015 

<b>Description:</b> Deterministic Finite State Machines


Machine 1:
=======

A machine that accepts a string of one or more a’s, followed by one or more b’s, over the alphabet {a, b}. The number of a’s and b’s don’t have to be equal – there just has to be at least one of each, and all a’s have to be before all the b’s. 

\![alt text](http://i.imgur.com/wMRoS5m.png?2 "Machine 1")

Examples of words that are accepted are: ab, aab, abb, aaabb. 

Examples of words rejected include a, b, ba, aba, and bab. 

Machine 2:
=======

A machine that accepts all valid times in military times (0000 to 2359).

\![alt text](http://i.imgur.com/2u0YGEy.png?1 "Machine 2")


Machine 3:
=======

A machine that accepts all values 2i for i >= 0 in binary (over the alphabet {0,1}), with no leading 0s (i.e., the binary encodings of 1,2,4,8,16,…)

\![alt text](http://i.imgur.com/p9hiScT.png?1 "Machine 3")

Machine 4:
=======

A machine that accepts all values (2i -1) for i >= 1 in binary (over the alphabet {0,1}), with no leading 0s (i.e., the binary encodings of (1,3,7,15,…)) 

\![alt text](http://i.imgur.com/PehS1jV.png?1 "Machine 4")

Machine 5:
=======

A machine that accepts the following standard comparison operators: <, >, <=, >=, !=, == 

\![alt text](http://i.imgur.com/c3KE4hX.png?1 "Machine 5")

Machine 6:
=======

A machine that accepts all odd numbers in binary with no leading 0s (the binary encodings of 1,3,5,7,9,11,13,15,….) 

\![alt text](http://i.imgur.com/07OFGbP.png?1 "Machine 6")

Machine 7:
=======

A machine that accepts words with both an even number of 0s and an even number of 1s, over the alphabet {0,1}. Having zero of a number is considered even. 

\![alt text](http://i.imgur.com/p3zE9yd.png?2 "Machine 7")