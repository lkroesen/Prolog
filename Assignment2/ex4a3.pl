('The Imitation Game',[actor('Knightely','Keira'),actor('Cumberbatch','Benedict')],
[genre('drama')],114,13,8).
movie('The Godfather',[actor('Brando','Marlon')],[genre('drama'),genre('crime')],170,18,9).
movie('A Bad Movie',[actor('Eastwood','Clint')],[genre('action')],100,16,2).
movie('Z Good Movie',[actor('Thurman','Uma')],[genre('thriller')],90,16,10).
listMoviesByGenre(L,G):- bagof(X,getMovies(X,G),Li), sort(Li,L).
getMovies(H,Gr):- (movie(X,_,[K|T],_,_,_), H = X, Gr = K); (movie(X,_,[K|T],_,_,_), member(Gr,[K|T]) -> H = X).
member(X,[X|_]).
member(X,[_|Tail]) :- member(X,Tail).


