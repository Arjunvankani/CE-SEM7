male(arjun).
male(bakulbhai).
male(natubhai).
female(bharvi).
female(arunaben).
female(kundanben).
child(arjun,bakulbhai).
child(arjun,arunaben).
child(bharvi,bakulbhai).
child(bharvi,arunaben).
child(bakulbhai,natubhai).
child(bakulbhai,kundanben).
brother(X,Y):-
    male(X),
    child(X,Z),
    child(Y,Z),
    X\=Y.
sister(X,Y):-
    female(X),
    child(X,Z),
    child(Y,Z),
    X\=Y.
father(X,Y):-
    male(X),
    child(Y,X).
mother(X,Y):-
    female(X),
    child(Y,X).
grandfather(X,Y):-
    male(X),
    child(Y,Z),
    child(Z,X).
grandmother(X,Y):-
    female(X),
    child(Y,Z),
    child(Z,X).
ancestor(X,Y):-
    male(X),
    child(Y,Z),
    child(Z,X);
    female(X),
    child(Y,Z),
    child(Z,X).









