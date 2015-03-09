movie('The Imitation Game',[actor('Knightely','Keira'),actor('Cumberbatch','Benedict')],
[genre('drama')],114,13,8).
movie('The Godfather',[actor('Brando','Marlon')],[genre('drama'),genre('crime')],170,18,9).
movie('A Bad Movie',[actor('Eastwood','Clint')],[genre('action')],100,16,2).
movie('Z Good Movie',[actor('Thurman','Uma')],[genre('thriller')],90,16,10).


findMovie(Actor,Genres,Movie):- getActorMovieNames(Actor,Na), getMovieGenreNames(Genres,N), compareLists(Na,N,Movie).

compareLists([],_,[]).
compareLists([H|T],L2,[H|Movie]):- member(H,L2), compareLists(T,L2,Movie). 

getActorMovieNames(Actor,X) :- findall(Names,getMovieActor(Actor,Names),X).

getMovieActor(Actor,Names):- movie(Name,Actors,_,_,_,_), member(actor(Actor,_),Actors) -> Names = Name. 

getMovieGenreNames(Genres,X) :- findall(Names,getMovieGenre(Genres,Names),X).

getMovieGenre(Genres,Names) :- movie(Name,_,Genress,_,_,_), listMember(Genres,Genress) -> Names = Name.

member(X,[X|_]).
member(X,[_|Tail]) :- member(X,Tail).

listMember([H|T],CompList) :- member(H,CompList); listMember(T,CompList).
