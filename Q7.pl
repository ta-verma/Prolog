# Prolog program to implement multi (N1, N2, R) : where N1 and N2 denotes the numbers to be multiplied and R represents the result.

go :-   write('First :'),
        read(N1),
        write('Second :'),
        read(N2),
        multi(N1,N2,R),
        write('Sum :'),
        write(R), nl.

multi(N1,1,N1).

multi(N1,N2,R):-  Temp is N2-1, 
                  multi(N1,Temp,R1),
                  R is R1+N1.

:-initialization(go).