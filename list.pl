go :- write('Enter a list'), nl,
      createList(L1),
      printList(L1), nl.

enterEle(X) :- write('Enter element :'),
               read(X).

createList(L1) :- enterEle(X), createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1), createList(X1,T).

printList([]).
printList([H|T]) :- write(' '), write(H), printList(T).


:-initialization(go).