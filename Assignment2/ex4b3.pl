movie('The Imitation Game',[actor('Knightely','Keira'),actor('Cumberbatch','Benedict')],
[genre('drama')],114,13,8).
movie('The Godfather',[actor('Brando','Marlon')],[genre('drama'),genre('crime')],170,18,9).
movie('A Bad Movie',[actor('Eastwood','Clint')],[genre('action')],100,16,2).
movie('Z Good Movie',[actor('Thurman','Uma')],[genre('thriller')],90,16,10).

%numberMovies(_,Genre,Count):- findall(Co,getMovies(Gen,Co,Genre),CountList), sumList(CountList,Count).

%sumList([],0).
%sumList([H|T], Sum) :- sumList(T,Rest), Sum is H+Rest.


%getMovies(Name,Time):- movie(Name,_,_,Time,_,_), countGengreInList(Genre,0, Count,Gen), Gr = Genre, Count = Co.

%countGengreInList([H|T],Start,Count,GenreToCompare):- isEqual(H,GenreToCompare) -> Count = Start + 1.
		




timeLimit(Limit,Answer):- findall(Time,getMovies(X,Time),Answer).
isLower(Limit,Check):- Check =< Limit.
getMovies(Name,Time):- movie(Name,_,_,Time,_,_)
