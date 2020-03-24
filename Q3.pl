# Write a program in PROLOG to implement factorial (N, F) where F represents the factorial of a number N.

go :-   write('Enter Number :'),
        read(N),
        factorial(N,F),
        write('Factorial :'),
        write(F).


factorial(0,1).
    
factorial(N,X):-N1 is N-1,
				factorial(N1,X1),
				X is X1*N.

:-initialization(go).