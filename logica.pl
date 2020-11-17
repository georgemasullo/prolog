homen(goku).
homen(mrsatan).
homen(gohan).
homen(gotten).
mulher(chichi).
mulher(videl).
mulher(pan).
mulher(mssatan).
progenitor(goku,gohan).
progenitor(chichi,gohan).
progenitor(goku,gotten).
progenitor(chichi,gotten).
progenitor(mrsatan,videl).
progenitor(mssatan,videl).
pai(X,Y) :- homen(X),progenitor(X,Y).
mae(X,Y) :- mulher(X),progenitor(X,Y).
irmao(X,Y) :-(pai(Z,X),pai(Z,Y);mae(M,X),mae(M,Y)),X\=Y.
ancestral(X,Y):- progenitor(X,Y).
ancestral(X,Y):- progenitor(X,Z),ancestral(Z,Y).
