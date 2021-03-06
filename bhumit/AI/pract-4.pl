father("Motilal","Jawaharlal").
father("Motilal","Vijayalakshmi").
father("Motilal","Krishna").
father("Jawaharlal","Indira").
father("Ranjit","Tara").
father("Ranjit","Lekha").
father("Ranjit","Rita").
father("Feroz","Sanjay").
father("Feroz","Rajiv").
father("Sanjay","Varun").
father("Rajiv","Rahul").
father("Rajiv","Priyanka").

wife_of("Swaruprani","Motilal").
wife_of("Kamla","Jawaharlal").
wife_of("Vijayalakshmi","Ranjit").
wife_of("Indira","Feroz").
wife_of("Maneka","Sanjay").
wife_of("Sonia","Rajiv").

female("Krishna").
female("Priyanka").
female("Lekha").
female("Tara").
female("Rita").

female(X) :-
wife_of(X,_).
male("Varun").
male("Rahul").

male(X) :-
husband_of(X,_).

husband_of(X,Y) :-
wife_of(Y,X).

mother(X,Y):-
wife_of(X,Z),
father(Z,Y).

parent(X,Y):-
father(X,Y);
mother(X,Y).

child(X,Y):-
parent(Y,X).

son(X,Y):-
child(X,Y),
male(X).

daughter(X,Y):-
child(X,Y),
female(X).

brother(X,Y):-
father(Z,X),
father(Z,Y),
male(X),
not(X=Y).

sister(X,Y):-
father(Z,X),
father(Z,Y),
female(X),
not(X=Y).

uncle(X,Y):-
parent(Z,Y),
brother(X,Z);
parent(Z,Y),
sister(S,Z),
husband_of(X,S).

aunt(X,Y):-
sister(X,Z),
parent(Z,Y).

aunt(X,Y):-
wife_of(X,Z),
uncle(Z,Y).

ancestor(X,Y):-
parent(X,Y).

ancestor(X,Y):-
parent(Z,Y),
ancestor(X,Z).

grand_father(X,Y):-
parent(X,Z),
parent(Z,Y),
male(X).

grand_mother(X,Y):-
parent(X,Z),
parent(Z,Y),
female(X).

cofather("Motilal","Jawaharlal").
father("Motilal","Vijayalakshmi").
father("Motilal","Krishna").
father("Jawaharlal","Indira").
father("Ranjit","Tara").
father("Ranjit","Lekha").
father("Ranjit","Rita").
father("Feroz","Sanjay").
father("Feroz","Rajiv").
father("Sanjay","Varun").
father("Rajiv","Rahul").
father("Rajiv","Priyanka").

wife_of("Swaruprani","Motilal").
wife_of("Kamla","Jawaharlal").
wife_of("Vijayalakshmi","Ranjit").
wife_of("Indira","Feroz").
wife_of("Maneka","Sanjay").
wife_of("Sonia","Rajiv").

female("Krishna").
female("Priyanka").
female("Lekha").
female("Tara").
female("Rita").

female(X) :-
wife_of(X,_).
male("Varun").
male("Rahul").

male(X) :-
husband_of(X,_).

husband_of(X,Y) :-
wife_of(Y,X).

mother(X,Y):-
wife_of(X,Z),
father(Z,Y).

parent(X,Y):-
father(X,Y);
mother(X,Y).

child(X,Y):-
parent(Y,X).

son(X,Y):-
child(X,Y),
male(X).

daughter(X,Y):-
child(X,Y),
female(X).

brother(X,Y):-
father(Z,X),
father(Z,Y),
male(X),
not(X=Y).

sister(X,Y):-
father(Z,X),
father(Z,Y),
female(X),
not(X=Y).

uncle(X,Y):-
parent(Z,Y),
brother(X,Z);
parent(Z,Y),
sister(S,Z),
husband_of(X,S).

aunt(X,Y):-
sister(X,Z),
parent(Z,Y).

aunt(X,Y):-
wife_of(X,Z),
uncle(Z,Y).

ancestor(X,Y):-
parent(X,Y).

ancestor(X,Y):-
parent(Z,Y),
ancestor(X,Z).

grand_father(X,Y):-
parent(X,Z),
parent(Z,Y),
male(X).

grand_mother(X,Y):-
parent(X,Z),
parent(Z,Y),
female(X).

cousin(X,Y):-
parent(Z,X),
parent(W,Y),
brother(Z,W);
parent(Z,X);
parent(W,Y),
sister(Z,W).

nephew(X,Y):-
male(X),
uncle(Y,X);
male(X),
aunt(Y,X).

niece(X,Y):-
female(X),
uncle(Y,X);
female(X).
