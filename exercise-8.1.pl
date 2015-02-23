sun(X):-rain(X).
sun(X):-warm(Y).
warm(Y):-warm(Y).
warm(a).
rain(b).

% This prolog program will cause a failed branch,
% and will cause an infinite branch