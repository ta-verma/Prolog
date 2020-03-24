# Write a Prolog program to implement maxlist(L, M) so that M is the maximum number in the list.


go :- write('Enter a list'), nl,
      createList(L),

      maxlist(L,M),
      write('Maximum Number :'),
      write(M), nl.




enterEle(X) :- write('Enter element :'),
               read(X).

createList(L1) :- enterEle(X), createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1), createList(X1,T).

maxlist([H],H).

maxlist([H|T],M):- maxlist(T,M1), 
                H<M1 -> M is M1;
                M is H.

:-initialization(go).