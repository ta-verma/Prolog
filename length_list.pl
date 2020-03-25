# Write a program in prolog for calculating the length of list.

go :- write('Enter a list: '),nl,
      createList(L),
      length_of(L,N),
      write('Length : '),
      R is N,
      write(R), nl.

enterEle(X) :- write('Enter element:- '),
               read(X).

createList(L1) :- enterEle(X),createList(X,L1).
createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1) , createList(X1,T).

length_of([],0).
length_of([_|T],N) :- N = N1+1 , length_of(T , N1).

:-initialization(go).