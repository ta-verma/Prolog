# Write a Prolog program to implement delete_nth (N, L, R) that removes the element on Nth position from a list L to generate a list R.


go :- write('Enter a list'), nl,
      createList(L),
      write('Enter the index :'),
      read(N),  
      delete_nth(N,L,R),
      write('Modified List :'),
      printList(R), nl.


printList([]).
printList([H|T]) :- write(' '), write(H), printList(T).

enterEle(X) :- write('Enter element :'),
               read(X).

createList(L1) :- enterEle(X), createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1), createList(X1,T).


delete_nth(1, [_|T], T).

delete_nth(N, [H|T], [H|R]):- N1 is N-1,
                            delete_nth(N1, T, R).


:-initialization(go).