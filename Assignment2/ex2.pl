% Even de Kruif - 4424336 - E.J.deKruif@student.tudelft.nl
% Laurens Kroesen - 4350286 - L.Kroesen@student.tudelft.nl
% Group: 37

sumMinMax([],L) :- L is 0.
sumMinMax([H|T],L) :- min([H|T],Y), max([H|T],X),L is Y + X. 

min([Min],Min).              
min([H,K|T],M) :- H =< K, min([H|T],M).               
min([H,K|T],M) :- H > K, min([K|T],M).

max([Max],Max).              
max([H,K|T],M) :- H > K, max([H|T],M).               
max([H,K|T],M) :- H =< K, max([K|T],M).
