
logon :- getinput,
        write('You are logged in.'),nl.

logon :- repeat,
        write('Sorry, you are not permitted.'),nl,
        write('Try again.'),nl,
        getinput,
        write('You are now logged in.').

getinput :- write('Login Windows'),nl,
		write('Enter your username : '),
        read(Name),nl,
        write('Enter Password : '),
        read(Password),nl,
        user(Name, Password).

user(arjun,0103).
