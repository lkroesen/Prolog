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
% q(f(X),f(X)) which when going back to our first rule of: pred(X):-q(X,X).
% means that to complete that statement our variable has to be f(X), resulting in what we get returned from prolog
% which is X = f(X).
% -----
% With pred(f(a)). we compare q(f(a),(f(f(a))) which is not the same so our rule of:
% pred(X):-q(X,X). is not true, resulting in prolog returning a false.


