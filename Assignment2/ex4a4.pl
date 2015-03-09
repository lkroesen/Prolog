movie('The Imitation Game',[actor('Knightely','Keira'),actor('Cumberbatch','Benedict')],
[genre('drama')],114,13,8).
movie('The Godfather',[actor('Brando','Marlon')],[genre('drama'),genre('crime')],170,18,9).
movie('A Bad Movie',[actor('Eastwood','Clint')],[genre('action')],100,16,2).
movie('Z Good Movie',[actor('Thurman','Uma')],[genre('thriller')],90,16,10).
listMoviesByGenreCat(G,L):- bagof(X,getMovies(X,G),Li), sort(Li,L).
getMovies(H,Gr):- movie(X,_,[K|T],_,_,_), H = X, Gr = K.

