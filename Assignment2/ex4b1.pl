movie('The Imitation Game',[actor('Knightely','Keira'),actor('Cumberbatch','Benedict')],
[genre('drama')],114,13,8).
movie('The Godfather',[actor('Brando','Marlon')],[genre('drama'),genre('crime')],170,18,9).
movie('A Bad Movie',[actor('Eastwood','Clint')],[genre('action')],100,16,2).
movie('Z Good Movie',[actor('Thurman','Uma')],[genre('thriller')],90,16,10).
listMoviesByRank(_,L):- findall(Rank,getMovies(X,Rank),Ranks), sort(Ranks,SortedRanks), reverse(SortedRanks,SortedRankss), makeList(SortedRankss,L).
getMovies(H,Gr):- movie(X,_,_,_,_,Rank), H = X, Gr = Rank.
getName(N,R) :- movie(X,_,_,_,_,R), N = X.

makeList([],[]).
makeList([Rank|T],[Name|L]) :- getName(N,Rank), Name = N, makeList(T,L).
