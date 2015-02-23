sun(X):-warm(Y).
warm(a).
warm(Y):-warm(Y).
sun(X):-rain(X).
rain(b).

% This program will cause a branch with infinitely many succeful branches