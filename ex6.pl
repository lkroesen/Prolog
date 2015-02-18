on(b, a).
on(c, b).
above(X, Y) :- on(X, Y).
above(X, Y) :- on(X, Z), above(Z, Y).