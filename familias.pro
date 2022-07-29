% Hecho : Personas
% se leen de manera persona(X,Y)
% donde X es una persona de genero
% Y
persona(joseArcadioBuenDia,masc).
persona(ursula,fem).
persona(rebeca,fem).
persona(joseArcadio,masc).
persona(amaranta,fem).
persona(pilar,fem).
persona(coronelAureliano,masc).
persona(remediosMoscote,fem).
persona(arcadio,masc).
persona(aurelianoJose,masc).
persona(santaSofia,fem).
persona(carmelita,fem).
persona(aurelianos17,masc).
persona(remediosLaBella,fem).
persona(aurelianoII,masc).
persona(joseArcadioII,masc).
persona(petra,fem).
persona(fernanda,fem).
persona(meme,fem).
persona(mauricio,masc).
persona(joseArcadioIII,masc).
persona(amarantaUrsula,fem).
persona(gaston,masc).
persona(aurelianoBabilonia,masc).
persona(aureliano,masc).



% Hecho: Padres.
% se leen de manera padre(X,Y)
% donde X es el padre de Y.
padre(joseArcadioBuenDia,rebeca).
padre(joseArcadioBuenDia,joseArcadio).
padre(joseArcadioBuenDia,amaranta).
padre(joseArcadioBuenDia,coronelAureliano).
padre(joseArcadio,arcadio).
padre(coronelAureliano,aurelianoJose).
padre(coronelAureliano,aurelianos17).
padre(arcadio,remediosLaBella).
padre(arcadio,aurelianoII).
padre(arcadio,joseArcadioII).
padre(aurelianoII,meme).
padre(aurelianoII,joseArcadioIII).
padre(aurelianoII,amarantaUrsula).
padre(mauricio,aurelianoBabilonia).
padre(aurelianoBabilonia,aureliano).


% Hecho: Madres.
% se leen de manera madre(X,Y)
% donde X es la madre de Y.
madre(ursula,rebeca).
madre(ursula,joseArcadio).
madre(ursula,amaranta).
madre(ursula,coronelAureliano).
madre(pilar,arcadio).
madre(pilar,aurelianoJose).
madre(santaSofia,remediosLaBella).
madre(santaSofia,aurelianoII).
madre(santaSofia,joseArcadioII).
madre(fernanda,meme).
madre(fernanda,joseArcadioIII).
madre(fernanda,amarantaUrsula).
madre(meme,aurelianoBabilonia).
madre(amarantaUrsula,aureliano).

% Hecho: Esposos.
% se leen de manera esposo(X,Y)
% donde X es esposo de Y.
esposo(joseArcadioBuenDia,ursula).
esposo(joseArcadio,rebeca).
esposo(coronelAureliano,remediosMoscote).
esposo(aurelianoII,fernanda).
esposo(amarantaUrsula,gaston).

% Hecho: Amantes masculinos.
% se leen de manera elAmante(X,Y)
% donde X es el amante de Y.
elAmante(joseArcadio,pilar).
elAmante(coronelAureliano,pilar).
elAmante(arcadio,santaSofia).
elAmante(aurelianoJose,carmelita).
elAmante(aurelianoII,petra).
elAmante(joseArcadioII,petra).
elAmante(mauricio,meme).
elAmante(aurelianoBabilonia,amarantaUrsula).


% Definiciones, todos deben ser personas.


% Definicion de esposa, se lee
% esposa(X,Y) donde X es esposa de Y.

esposa(X,Y) :- persona(X,fem),esposo(Y,X).

% Definicion de amante femenina, se lee
% laAmante(X,Y) donde X es la amante de Y.

laAmante(X,Y) :- persona(X,fem),elAmante(Y,X).

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