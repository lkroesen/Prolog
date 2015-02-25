pred(X):-q(X,X).
q(X,f(X)).


%[trace] 2 ?- pred(f(X)).
%  Call: (6) pred(f(_G3080)) ? creep
%  Unify: (6) pred(f(_G3080))
%  Call: (7) q(f(_G3080), f(_G3080)) ? creep
%  Unify: (7) q(f(f(f(f(f(f(f(f(f(...))))))))), f(f(f(f(f(f(f(f(f(...))))))))))
%  Exit: (7) q(f(f(f(f(f(f(f(f(f(...))))))))), f(f(f(f(f(f(f(f(f(...)))))))))) ? creep
%  Exit: (6) pred(f(f(f(f(f(f(f(f(f(...)))))))))) ? creep
% X = f(X).

% Explanation:
% The trace calls for pred(f(_G3080))) then the next step is to 
% unify pred(f(_G3080))
% then we call the implication of q(X, f(X)).
% we unify the implication, of q(X, f(X)).
% because we do not fail the implication because q(f(f(... infintly)), f(f(... infinitly).
% Prolog then knows that X should be f(X).

% [trace] 3 ?- pred(f(a)).
%   Call: (6) pred(f(a)) ? creep
%   Unify: (6) pred(f(a))
%   Call: (7) q(f(a), f(a)) ? creep
%   Fail: (7) q(f(a), f(a)) ? creep
%   Fail: (6) pred(f(a)) ? creep
% false.

% Explanation:
% we call pred(f(a)) and its implication , we unify the implication
% we call the q(X, f(X)).
% check the q(f(a), f(a)). which fails, because to be true it'd have to be a(f(a), f(f(a)))
% so we fail the rule, and we get false as result.
