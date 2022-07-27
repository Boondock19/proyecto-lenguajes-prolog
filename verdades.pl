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
