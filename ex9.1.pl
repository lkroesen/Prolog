pred(X):-q(X,X).
q(X,f(X)).

% 9.1: 
% When asking prolog: ?- pred(f(X)). the program returns:
% X = f(X).
% When asking prolog: ?- pred(f(a)). the program returns:
% false.
% An explanation to this diffrence is that f(X) contains a variable (uppercase X)
% and f(a) does not contain a variable, so when asking prolog if pred(f(X)) which would mean:
% pred(X). X = f(X), then we check q(X,X) to our constant q(X,f(X)). so then q(X,f(X)). becomes:
% q(f(f(f( until infinity... ),f(f(f( until infinity...   ))
% so, in order to make both of these keep filing each other in until infinity, value to be inputed
% as X has to be f(X), so that even though they go on infinity, they will go on equally infinity. 
% -----
% With pred(f(a)). we compare q(f(a),(f(f(a))) which can never be fufiled because we cannot fill in a to another f meaning,
% that these are not equal meaning our pred is not correct. 
% pred(X):-q(X,X). is not true, resulting in prolog returning a false.


