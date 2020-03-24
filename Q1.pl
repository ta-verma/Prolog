# Write a prolog program to calculate the sum of two numbers.

go :-   write('First :'),
        read(A),
        write('Second :'),
        read(B),
        sum(A,B,R),
        write('Sum :'),
        write(R).

sum(A,B,R) :- R is A+B.

:-initialization(go).