% Hecho : Personas
% se leen de manera persona(X,Y)
% donde X es una persona de genero
% Y

persona(miguelI,masc).
persona(eudoxiaStres,fem).
persona(alexei,masc).
persona(mariaMiloslavskaya,fem).
persona(nataliaNayshkina,fem).
persona(fiodor,masc).
persona(sofia,fem).
persona(ivanV,masc).
persona(pedroI,masc).
persona(eudoxiaLopukhina,fem).
persona(catalinaI,fem).
persona(praskoviaSaltikova,fem).
persona(ana,fem).
persona(ekaterina,fem).
persona(carlosLeopoldo,masc).
persona(anaLeopoldovna,fem).
persona(antonio,masc).
persona(ivanVI,masc).
persona(alexeiPedroI,masc).
persona(carlota,fem).
persona(pedroII,masc).
persona(anaPedroI,fem).
persona(carlosFederico,masc).
persona(isabel,fem).
persona(pedroIII,masc).
persona(catalinaII,fem).
persona(pablo,masc).
persona(mariaFiodorwna,fem).
persona(alejandroI,masc).
persona(constantino,masc).
persona(nicolasI,masc).
persona(alejandraFiodorovna,fem).
persona(alejandroII,masc).
persona(mariaDeHesse,fem).
persona(nikolai,masc).
persona(alejandroIII,masc).
persona(mariaFiodorovna,fem).
persona(georgi,masc).
persona(miguelII,masc).
persona(nicolasII,masc).
persona(alejandraDeHesse,fem).
persona(alexeiNicolasII,masc).

% Hecho: Padres.
% se leen de manera padre(X,Y)
% donde X es el padre de Y.

padre(miguelI,alexei).
padre(alexei,fiodor).
padre(alexei,sofia).
padre(alexei,ivanV).
padre(alexei,pedroI).
padre(ivanV,ana).
padre(ivanV,ekaterina).
padre(carlosLeopoldo,anaLeopoldovna).
padre(antonio,ivanVI).
padre(pedroI,alexeiPedroI).
padre(pedroI,anaPedroI).
padre(pedroI,isabel).
padre(alexeiPedroI,pedroII).
padre(carlosFederico,pedroIII).
padre(pedroIII,pablo).
padre(pablo,alejandroI).
padre(pablo,constantino).
padre(pablo,nicolasI).
padre(nicolasI,alejandroII).
padre(alejandroII,alejandroIII).
padre(alejandroII,nikolai).
padre(alejandroIII,nicolasII).
padre(alejandroIII,georgi).
padre(alejandroIII,miguelII).
padre(nicolasII,alexeiNicolasII).

% Hecho: Madres.
% se leen de manera madre(X,Y)
% donde X es la madre de Y.

madre(eudoxiaStres,alexei).
madre(mariaMiloslavskaya,fiodor).
madre(mariaMiloslavskaya,sofia).
madre(mariaMiloslavskaya,ivanV).
madre(nataliaNayshkina,pedroI).
madre(praskoviaSaltikova,ana).
madre(praskoviaSaltikova,ekaterina).
madre(ekaterina,anaLeopoldovna).
madre(anaLeopoldovna,ivanVI).
madre(eudoxiaLopukhina,alexeiPedroI).
madre(catalinaI,anaPedroI).
madre(catalinaI,isabel).
madre(carlota,pedroII).
madre(anaPedroI,pedroIII).
madre(catalinaII,pablo).
madre(mariaFiodorwna,alejandroI).
madre(mariaFiodorwna,constantino).
madre(mariaFiodorwna,nicolasI).
madre(alejandraFiodorovna,alejandroII).
madre(mariaDeHesse,alejandroIII).
madre(mariaDeHesse,nikolai).
madre(mariaFiodorovna,nicolasII).
madre(mariaFiodorovna,georgi).
madre(mariaFiodorovna,miguelII).
madre(alejandraDeHesse,alexeiNicolasII).

% Hecho: Esposos.
% se leen de manera esposo(X,Y)
% donde X es esposo de Y.

esposo(miguelI,eudoxiaStres).
esposo(alexei,mariaMiloslavskaya).
esposo(alexei,nataliaNayshkina).
esposo(ivanV,praskoviaSaltikova).
esposo(carlosLeopoldo,ekaterina).
esposo(antonio,anaLeopoldovna).
esposo(pedroI,eudoxiaLopukhina).
esposo(pedroI,catalinaI).
esposo(alexeiPedroI,carlota).
esposo(carlosFederico,anaPedroI).
esposo(pedroIII,catalinaII).
esposo(pablo,mariaFiodorwna).
esposo(nicolasI,alejandraFiodorovna).
esposo(alejandroII,mariaDeHesse).
esposo(alejandroIII,mariaFiodorovna).
esposo(nicolasII,alejandraDeHesse).


% Definiciones, todos deben ser personas.


% Definicion de esposa, se lee
% esposa(X,Y) donde X es esposa de Y.


esposa(X,Y) :- persona(X,fem),esposo(Y,X).

% Definicion de hermano, se lee
% hermano(X,Y) donde X es una persona
% masculina con el mismo padre o madre que Y.


hermano(X,Y) :- persona(X,masc),
    ((padre(Z,X),padre(Z,Y));(madre(Z,X),madre(Z,Y)))
    , X \= Y.

% Definicion de hermana, se lee
% hermana(X,Y) donde X es una persona
% femenina con el mismo padre o madre que Y.

hermana(X,Y) :- persona(X,fem),
    ((padre(Z,X),padre(Z,Y));(madre(Z,X),madre(Z,Y)))
    , X \= Y.

% Definicion de abuelo, se lee
% abuelo(X,Y) donde X es el padre
% del padre de Y o de la madre de Y.


abuelo(X,Y) :- persona(X,masc),
    ((padre(X,Z),(padre(Z,Y);madre(Z,Y)))).

% Definicion de abuela, se lee
% abuela(X,Y) donde X es la madre
% del padre de Y o de la madre de Y.


abuela(X,Y) :- persona(X,fem),
    ((madre(X,Z),(padre(Z,Y);madre(Z,Y)))).

% Definicion de hijo, se lee
% hijo(X,Y) donde X es el hijo y
% su padre o madre es Y.

hijo(X,Y) :- persona(X,masc),
    (padre(Y,X);madre(Y,X)).

% Definicion de hija, se lee
% hija(X,Y) donde X es la hija y
% su padre o madre es Y.

hija(X,Y) :- persona(X,fem),
    (padre(Y,X);madre(Y,X)).

% Definicion de nieto, se lee
% nieto(X,Y) donde X es hijo de
% un hijo o hija de Y.

nieto(X,Y) :- persona(X,masc),
    ((hijo(Z,Y);hija(Z,Y)),hijo(X,Z)).

% Definicion de nieta, se lee
% nieta(X,Y), donde X es hija de
% un hijo o hija de Y.

nieta(X,Y) :- persona(X,fem),
    ((hijo(Z,Y);hija(Z,Y)),hija(X,Z)).


% Definicion de tio, se lee
% tio(X,Y) donde X es el hermano
% del padre o madre de Y

tio(X,Y) :- persona(X,masc),
    (hermano(X,Z),(padre(Z,Y);madre(Z,Y))).

% Definicion de tia, se lee
% tia(X,Y) donde X es el hermana
% del padre o madre de Y

tia(X,Y) :- persona(X,fem),
    (hermana(X,Z),(padre(Z,Y);madre(Z,Y))).

% Definicion de sobrino, se lee
% sobrino(X,Y) donde X es el hijo
% del hermano o hermana de Y

sobrino(X,Y) :- persona(X,masc),
    (hijo(X,Z),(hermano(Z,Y);hermana(Z,Y))).

% Definicion de sobrina, se lee
% sobrina(X,Y) donde X es la hija
% del hermano o hermana de Y

sobrina(X,Y) :- persona(X,fem),
    (hija(X,Z),(hermano(Z,Y);hermana(Z,Y))).

% Definicion de cu�ado, se lee
% cunado(X,Y) donde X puede ser el esposo
% del hermano o hermana de Y.
% O donde X puede ser el hermano
% del esposo o esposa de Y

cu�ado(X,Y) :- persona(X,masc),
    ((esposo(X,Z),(hermano(Z,Y);hermana(Z,Y)));
    (hermano(X,Z),(esposo(Z,Y);esposa(Z,Y)))).

% Definicion de cuñada, se lee
% cunada(X,Y) donde X puede ser la esposa
% del hermano o hermana de Y.
% O donde X puede ser la hermana
% del esposo o esposa de Y

cu�ada(X,Y) :- persona(X,fem),
    ((esposa(X,Z),(hermano(Z,Y);hermana(Z,Y)));
    (hermana(X,Z),(esposo(Z,Y);esposa(Z,Y)))).

% Definicion de suegro, se lee
% suegro(X,Y) donde X es el padre
% del esposo o la esposa de Y

suegro(X,Y) :- persona(X,masc),
    (padre(X,Z),(esposo(Z,Y);esposa(Z,Y))).

% Definicion de suegra, se lee
% suegro(X,Y) donde X es la madre
% del esposo o la esposa de Y

suegra(X,Y) :- persona(X,fem),
    (madre(X,Z),(esposo(Z,Y);esposa(Z,Y))).