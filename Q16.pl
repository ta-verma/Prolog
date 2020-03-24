# Write a Prolog program to implement nth_element (N, L, X) where N is the desired position, L is a list and X represents the Nth element of L.

go :- write('Enter a list'), nl,
      createList(L),

      write('Enter the index :'),
      read(N),

      nth_element(N,L,X),
      write('Element :'),
      write(X), nl.

enterEle(X) :- write('Enter element :'),
               read(X).

createList(L1) :- enterEle(X), createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1), createList(X1,T).


nth_element(1,[H|_],H).

nth_element(N,[_|T],X):- N1 is N-1,
                        nth_element(N1,T,X).



:-initialization(go).