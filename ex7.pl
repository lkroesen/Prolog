on(b, a).
on(c, b).
on(d, c).
on(e, d).

above(X, Y) :- on(X, Y).
above(X, Y) :- on(X,Z), above(Z,Y).

on(X, Y, 1) :- on(X, Y).
above(X, Y, Value, Accumulator) :- on(X, Y, Z), Value is Z + Accumulator.
above(X, Y, Value, Accumulator) :- on(X, Z), above(Z, Y, N, Accumulator), Value is N + 1.

atLeastThree(X) :- above(X, _, Z, 0), Z >= 3.

exactlyThree(X) :- above(X, _, Z, 0), Z =:= 3.
%DOESNT WORK CORRECTLY YET.