route_by_bike(eWI, lR).
route_by_foot(eWI, lR).
% there exists a route from EWI to L&R and vice versa.

route_by_bike(aULA, eWI).
route_by_foot(eWI, iO).
% there exists a route from AULA to EWI and vice versa.


route_by_bike(A, B).
bike(A, B, C) :- route_by_bike(A, B), C = 9.
% C is the time between two points. In the future it could be used to calculate the shortest route.

route_by_foot(A, B).
foot(A, B, C) :- route_by_foot(A, B), C = 20.
% C is the time between two points. In the future it could be used to calculate the shortest route.

route(A, B) :- foot(A, B, _).
route(A, B) :- bike(A, B, _).
% there exists a route between A and B if there is a bike route or a foot route between A and B.