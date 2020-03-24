# Write a Prolog program to implement max(X, Y, M) so that M is the maximum of two numbers X and Y.

go :-   write('First :'),
        read(X),
        write('Second :'),
        read(Y),
        max(X,Y,M),
        write('Max :'),
        write(M).

max(X,Y,Y) :- X<Y.
max(X,Y,X) :- X>Y.
 

:-initialization(go).