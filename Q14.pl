# Write a Prolog program to implement sumlist(L, S) so that S is the sum of a given list L.



go :- write('Enter a list'), nl,
      createList(L1),
      write('SumList :'),
      sumlist(L1,S),
      write(S), nl.

enterEle(X) :- write('Enter element :'),
               read(X).

createList(L1) :- enterEle(X), createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1), createList(X1,T).

sumlist([],0).

sumlist([H|T],S):- sumlist(T,S1),
                   S is H+S1.

:-initialization(go).