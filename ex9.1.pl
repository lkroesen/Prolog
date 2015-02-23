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
% With pred(f(a)) we try to prove the implication so we get q(f(a), f(a)).
% which is wrong because for the implication to be true we'd need to input the input of the input of the etc...
% which we cannot do with f(a). resulting in false.

