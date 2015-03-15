% Even de Kruif - 4424336 - E.J.deKruif@student.tudelft.nl
% Laurens Kroesen - 4350286 - L.Kroesen@student.tudelft.nl
% Group: 37

removeSum([H|T],[H|L]) :- Sum is H, removeSumAlg(T,Sum,L).
removeSumAlg([],_,[]).
removeSumAlg([H|T],Sum,L) :- H = Sum, NewSum is Sum + H, removeSumAlg(T,NewSum,L).
removeSumAlg([H|T],Sum,[H|L]) :- H \= Sum, NewSum is Sum + H, removeSumAlg(T,NewSum,L).
