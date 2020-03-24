# Write a Program in PROLOG to implement sublist(S, L) that checks whether the list S is the sublist of list L or not. (Check for sequence or the part in the same order).


go :- write('Enter a list'), nl,
      createList(L),

      write('Enter the sublist :'), nl,
      createList(S),
      
      mysublist(S,L).


enterEle(X) :- write('Enter element :'),
               read(X).

createList(L1) :- enterEle(X), createList(X,L1).

createList(-1,[]) :- !.
createList(X,[X|T]) :- enterEle(X1), createList(X1,T).

mysublist([],_).

mysublist(_,[]):- write('false').

mysublist([H1|T1],[H1|T2]):- mysublist(T1,T2).

mysublist([H1|T1],[_|T2]):- mysublist([H1|T1],T2).

:-initialization(go).