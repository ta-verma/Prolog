# Write a Prolog program to implement GCD of two numbers.

go :-   write('First :'),
        read(A),
        write('Second :'),
        read(B),
        gcd(A,B,R),
        write('Result :'),
        write(R), nl.

gcd(X,X,X).

gcd(X,Y,D):- X<Y, 
             gcd(Y,X,D).

gcd(X,Y,D):- X>Y,
             Y1 is X-Y,
             gcd(Y,Y1,D).


:-initialization(go).