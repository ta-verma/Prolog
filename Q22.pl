# Write a program in PROLOG to implement delete_all (X, L, R) where X denotes the element whose all occurrences has to be deleted from list L to obtain list R.


go :- write('Enter a list'), nl,
      createList(L),
      write('Enter the element :'),
      read(X),  
      delete_all(X,L,R),
      write('Modified List :'),
      printList(R), nl.


printList([]).
printList([H|T]) :- write(' '), write(H), printList(T).

enterEle(X) :- write('Enter element :'),
               read(X).

createList(L1) :- enterEle(X), createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1), createList(X1,T).


delete_all(_, [], []).

delete_all(X, [X|T], R):- delete_all(X, T, R).

delete_all(X, [H|T], [H|R]):- delete_all(X, T, R).


:-initialization(go).