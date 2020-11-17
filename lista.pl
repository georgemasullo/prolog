homen(ivo).
homen(gil).
homen(rai).
homen(ary).
homen(noe).

mulher(ana).
mulher(eva).
mulher(bia).
mulher(clo).
mulher(lia).
mulher(gal).

pai(ivo,eva).
pai(gil,rai).
pai(gil,clo).
pai(gil,ary).
pai(rai,noe).
pai(ary,gal).

mae(ana,eva).
mae(eva,noe).
mae(bia,rai).
mae(bia,clo).
mae(bia,ary).
mae(lia,gal).

gerou(X,Y) :- pai(X,Y);mae(X,Y).

filho(X,Y) :- homen(Y),gerou(X,Y).
filha(X,Y) :- mulher(Y),gerou(X,Y).
irmao(X,Y) :- homen(X),pai(Z,X),pai(K,Y),Z=K.
tio(X,Y):- gerou(K,Y), irmao(X,K).
