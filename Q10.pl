# Write a Prolog program to implement memb(X, L): to check whether X is a member of L or not.

go :- write('Enter a list'), nl,
      createList(L1),
      write('Enter element to find :'),
      read(X),
      memb(X,L1), nl.

enterEle(X) :- write('Enter element :'),
               read(X).

createList(L1) :- enterEle(X), createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1), createList(X1,T).

memb(_,[]) :- write('false'),!.
memb(X,[X|_]) :- write('true'),!.
memb(X,[_|T]) :- memb(X,T).

:-initialization(go).