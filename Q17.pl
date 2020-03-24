# Write a program in PROLOG to implement remove_dup (L, R) where L denotes the list with some duplicates and the list R denotes the list with duplicates removed.


go :- write('Enter a list'), nl,
      createList(L),

      remove_dups(L,R),
      write('List without duplicates :'),
      printList(R), nl.



printList([]).
printList([H|T]) :- write(' '), write(H), printList(T).

enterEle(X) :- write('Enter element :'),
               read(X).

createList(L1) :- enterEle(X), createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1), createList(X1,T).

is_member(X, [X|_]).

is_member(X, [_|T]):- is_member(X,T).

remove_dups([], []).

remove_dups([H|T], R):- is_member(H, T),
                        remove_dups(T, R).

remove_dups([H|T], [H|R]):- not(is_member(H, T)),
                            remove_dups(T, R).

:-initialization(go).