route_by_bike(eWI, lR).
route_by_bike(aULA, eWI).

route_by_foot(eWI, lR).
route_by_foot(eWI, iO).

route_by_bike(A, B).
bike(A, B, C) :- route_by_bike(A, B), C = 9.

route_by_foot(A, B).
foot(A, B, C) :- route_by_foot(A, B), C = 20.


route(A, B) :- foot(A, B, _).
route(A, B) :- bike(A, B, _).