
homme(jacques).
homme(paul).
homme(marc).

femme(marie).
femme(sophie).

parent(jacques, paul).
parent(jacques, sophie).
parent(marie, paul).
parent(marie, sophie).
parent(paul, marc).
parent(sophie, marc).


pere(X, Y) :- homme(X), parent(X, Y).
mere(X, Y) :- femme(X), parent(X, Y).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

freres_ou_soeurs(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.


longueur([], 0).
longueur([_|T], N) :- longueur(T, N1), N is N1 + 1.


element(X, [X|_]).
element(X, [_|T]) :- element(X, T).

oncle_ou_tante(X, Y) :- parent(Z, Y), freres_ou_soeurs(Z, X).


cousin(X, Y) :- parent(Z, X), parent(W, Y), freres_ou_soeurs(Z, W).

parent(julie, anne).
parent(julie, leo).
parent(anne, luc).
