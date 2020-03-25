# Write a program in PROLOG to implement remove_dup (L, R) where L denotes the list with some duplicates and the list R denotes the list with duplicates removed.


go:- write('Enter a list'),nl,
     createList(L),nl,
     remove_dup(L,R),
     write('Modified List : '),
     printList(R), nl.

memb([],_):-    !,fail.
memb([X|_],X):- !.
memb([_|T],Y):- memb(T,Y).

remove_dup([],[]).

remove_dup([X|T],T1):-  memb(T,X),!,
                        remove_dup(T,T1).
remove_dup([X|T],[X|T1]):- remove_dup(T,T1).
    

enterEle(X) :- write('Enter element :'),
               read(X).

createList(L1) :- enterEle(X), createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1), createList(X1,T).


printList([]).
printList([H|T]) :- write(' '), write(H), printList(T).

:-initialization(go).