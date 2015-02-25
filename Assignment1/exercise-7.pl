% on/2: the first block is on top of the second block.

on(b, a).
on(c, b).
on(d, c).
on(e, d).

above(X, Y) :- on(X, Y).
above(X, Y) :- on(X,Z), above(Z,Y).

% If de top block is on top of another block, the new accumulator value is increased by one and the function numberOfBlocksUnder is called on the bottom block.
numberOfBlocksUnder(Top, A, H) :- on(Top, Y), Anew is A + 1, numberOfBlocksUnder(Y, Anew, H).

% If no block can be found underneath the bottom block, the number of blocks is equal to the number of blocks in the accumulator.
numberOfBlocksUnder(Top, A, A) :- \+ on(Top, _).

exactlyThree(X) :- numberOfBlocksUnder(X, 0, L), L =:= 3.
atLeastThree(X) :- numberOfBlocksUnder(X, 0, L), L >= 3.

exactlyX(X, Y) :- numberOfBlocksUnder(X, 0, L), L =:= Y.
atLeastX(X, Y) :- numberOfBlocksUnder(X, 0, L), L >= Y.


% We're not sure how we can fix that prolog gives 2 answers when exactlyThree/1 and atLeastThree/1 are succesful the first time. When it is false, it only gives the correct answer.