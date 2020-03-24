# Write a program in PROLOG to implement palindrome (L) which checks whether a list L is a palindrome or not.

go :- write('Enter a list'), nl,
      createList(L),

      
      palindrome(L), nl.


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


isEqual([],[]):- write('true').

isEqual([_|_],[_|_]):- write('false').

isEqual([H1|T1],[H1|T2]):- isEqual(T1,T2).

palindrome(L):- myReverse(L,R),
                isEqual(L,R).
                


:-initialization(go).