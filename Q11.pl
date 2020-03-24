# Write a Prolog program to implement conc (L1, L2, L3) where L2 is the list to be appended with L1 to get the resulted list L3.

go :- write('Enter a list 1'), nl,
      createList(L1),
      write('Enter a list 2'), nl,
      createList(L2),
      write("Appending List ..."),
      conc(L1,L2,L3),
      printList(L3), nl.

conc([],L2,L2).

conc([H|T1],L2,[H|T2]):- conc(T1,L2,T2).

printList([]).
printList([H|T]) :- write(' '), write(H), printList(T).

enterEle(X) :- write('Enter element :'),
               read(X).

createList(L1) :- enterEle(X), createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1), createList(X1,T).



:-initialization(go).