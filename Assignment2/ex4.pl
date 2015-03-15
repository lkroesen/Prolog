% Even de Kruif - 4424336 - E.J.deKruif@student.tudelft.nl
% Laurens Kroesen - 4350286 - L.Kroesen@student.tudelft.nl
% Group: 37

movie('The Imitation Game',[actor('Knightely','Keira'),actor('Cumberbatch','Benedict')],
[genre('drama')],114,13,8).
movie('The Godfather',[actor('Brando','Marlon')],[genre('drama'),genre('crime')],170,18,9).
movie('A Bad Movie',[actor('Eastwood','Clint')],[genre('action')],100,16,2).
movie('Z Good Movie',[actor('Thurman','Uma')],[genre('thriller')],90,16,10).

% Ex 4a 1
listMovies(L):- bagof(X,getMovies(X),L).
getMovies(H):- movie(X,_,_,_,_,_), H = X.

% Ex 4a 2
listMoviesByName(L):- bagof(X,getMoviesTW(X),Li), sort(Li,L).
getMoviesTW(H):- movie(X,_,_,_,_,_), H = X.

% Ex 4a 3
listMoviesByGenre(L,G):- bagof(X,getMoviesTH(X,G),Li), sort(Li,L).
getMoviesTH(H,Gr):- (movie(X,_,[K|T],_,_,_), H = X, Gr = K); (movie(X,_,[K|T],_,_,_), member(Gr,[K|T]) -> H = X).
member(X,[X|_]).
member(X,[_|Tail]) :- member(X,Tail).

% Ex 4a 4
listMoviesByGenreCat(G,L):- bagof(X,getMoviesFO(X,G),Li), sort(Li,L).
getMoviesFO(H,Gr):- movie(X,_,[K|T],_,_,_), H = X, Gr = K.

% Ex 4b 1
listMoviesByRank(_,L):- findall(Rank,getMoviesFI(X,Rank),Ranks), sort(Ranks,SortedRanks), reverse(SortedRanks,SortedRankss), makeList(SortedRankss,L).
getMoviesFI(H,Gr):- movie(X,_,_,_,_,Rank), H = X, Gr = Rank.
getName(N,R) :- movie(X,_,_,_,_,R), N = X.

makeList([],[]).
makeList([Rank|T],[Name|L]) :- getName(N,Rank), Name = N, makeList(T,L).

% Ex 4b 2
numberMovies(_,Genre,Count):- findall(Co,getMoviesSI(Gen,Co,Genre),CountList), sumList(CountList,Count).

sumList([],0).
sumList([H|T], Sum) :- sumList(T,Rest), Sum is H+Rest.

getMoviesSI(Gr,Co,Gen):- movie(_,_,Genre,_,_,_), countGengreInList(Genre,0, Count,Gen), Gr = Genre, Count = Co.

countGengreInList([H|T],Start,Count,GenreToCompare):- isEqual(H,GenreToCompare) -> Count = Start + 1.
		
isEqual(A,A).

% Ex 4b 3
timeLimit(Limit,Answer):- findall(Time,getMoviesSE(X,Time),Answer).
isLower(Limit,Check):- Check =< Limit.
getMoviesSE(Name,Time):- movie(Name,_,_,Time,_,_).

% Ex 4b 4
findMovie(Actor,Genres,Movie):- getActorMovieNames(Actor,Na), getMovieGenreNames(Genres,N), compareLists(Na,N,Movie).

compareLists([],_,[]).
compareLists([H|T],L2,[H|Movie]):- memberT(H,L2), compareLists(T,L2,Movie). 

getActorMovieNames(Actor,X) :- findall(Names,getMovieActor(Actor,Names),X).

getMovieActor(Actor,Names):- movie(Name,Actors,_,_,_,_), memberT(actor(Actor,_),Actors) -> Names = Name. 

getMovieGenreNames(Genres,X) :- findall(Names,getMovieGenre(Genres,Names),X).

getMovieGenre(Genres,Names) :- movie(Name,_,Genress,_,_,_), listMember(Genres,Genress) -> Names = Name.

memberT(X,[X|_]).
memberT(X,[_|Tail]) :- memberT(X,Tail).

listMember([H|T],CompList) :- memberT(H,CompList); listMember(T,CompList).