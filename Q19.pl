# Write a prolog program to implement insert_nth(I, N, L, R) that inserts an item I into Nth position of list L to generate a list R.


go :- write('Enter a list'), nl,
      createList(L),
      write('Enter the index :'),
      read(N),
      write('Enter Element :'),
      read(I),  
      insert_nth(I,N,L,R),
      write('Modified List :'),
      printList(R), nl.


printList([]).
printList([H|T]) :- write(' '), write(H), printList(T).

enterEle(X) :- write('Enter element :'),
               read(X).

createList(L1) :- enterEle(X), createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1), createList(X1,T).


insert_nth(I, 1, L, [I|L]).

insert_nth(I, N, [H|T], [H|R]):- N1 is N-1,
                                insert_nth(I, N1, T, R).


:-initialization(go).