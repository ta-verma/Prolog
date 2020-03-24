# Write a program in PROLOG to implement merge (L1, L2, L3) where L1 is first ordered list and L2 is second ordered list and L3 represents the merged list.

go :- write('Enter list 1'), nl,
      createList(L1),
      write('Enter list 2 :'),
      createList(L2), nl,  
      myMerge(L1,L2,L3),
      write('Merged List :'),
      printList(L3), nl.


printList([]).
printList([H|T]) :- write(' '), write(H), printList(T).

enterEle(X) :- write('Enter element :'),
               read(X).

createList(L1) :- enterEle(X), createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1), createList(X1,T).



myMerge([],L2,L2).

myMerge(L1,[],L1).

myMerge([H1|T1],[H2|T2],[H1|T3]):- H1=<H2,
                                myMerge(T1, [H2|T2], T3).

myMerge([H1|T1],[H2|T2],[H2|T3]):- myMerge([H1|T1], T2, T3).

:-initialization(go).