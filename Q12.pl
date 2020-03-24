# Write a Prolog program to implement reverse(L, R) where List L is original and List R is reversed list.

go :- write('Enter a list'), nl,
      createList(L),

      write(" "),
      myReverse(L,R),nl,nl,
      write('Reversed List : '),
      printList(R), nl,nl.



printList([]).
printList([H|T]) :- write(' '), write(H), printList(T).

createList(L1) :- enterEle(X), createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1), createList(X1,T).


enterEle(X) :- write('Enter element :'),
               read(X).
      
conc([],L2,L2).
conc([H|T1],L2,[H|T2]):- conc(T1,L2,T2).


myReverse([],[]).
myReverse([H|T],R):- myReverse(T,R1),
                conc(R1,[H],R).

:-initialization(go).