sun(X):-rain(X).
warm(Y):-warm(Y).
sun(X):-warm(Y).
warm(a).
rain(b).

% This program will cause an infinite branch without a solution.