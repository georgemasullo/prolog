homem(mikael).
homem(elijah).
homem(finn).
homem(kol).
homem(henrik).
homem(niklaus).
homem(georgeLockwood).
homem(masonLockwood).
homem(richardLockwood).
homem(tylerLockwood).
homem(hybrids).
homem(damonSalvatore).
homem(stefanSalvatore).
homem(johnGilbert).
homem(billForbes).
homem(mattDonovan).
homem(graysonGilbert).
homem(jeremyGilbert).
homem(gruseppeSalvatore).

mulher(esther).
mulher(rebekah).
mulher(carolLockwood).
mulher(jennaSommers).
mulher(maryPorter).
mulher(rose).
mulher(katherinePierce).
mulher(carolineFobes).
mulher(elizabethFobes).
mulher(isobelSaltzman).
mulher(vickiDonovan).
mulher(kellyDonovan).
mulher(elenaGilbert).
mulher(mirandaSommers).
mulher(ayanna).
mulher(emilyBennett).
mulher(sheilaBennett).
mulher(abbyBennett).
mulher(bonnieBennett).

vampiroOriginal(mikael).
vampiroOriginal(elijah).
vampiroOriginal(finn).
vampiroOriginal(kol).
vampiroOriginal(rebekah).
vampiroOriginal(niklaus).

transformouEmVampiro(niklaus,maryPoter).
transformouEmVampiro(niklaus,jennaSommers).
transformouEmVampiro(maryPoter,rose).
transformouEmVampiro(rose,katherinePierce).
transformouEmVampiro(katherinePierce,damonSalvatore).
transformouEmVampiro(katherinePierce,stefanSalvatore).
transformouEmVampiro(katherinePierce,carolineFobes).
transformouEmVampiro(damonSalvatore,abbyBennett).
transformouEmVampiro(damonSalvatore,vickiDonovan).
transformouEmVampiro(damonSalvatore,isobelSaltzman).
transformouEmVampiro(damonSalvatore,elenaGilbert).

foiInferno(katherinePierce).
foiInferno(damonSalvatore).

tomouCura(elenaGilbert).
tomouCura(katherinePierce).
tomouCura(stefanSalvatore).

bruxa(esther).
bruxa(ayanna).
bruxa(emilyBennett).
bruxa(sheilaBennett).
bruxa(bonnieBennett).


lobisomem(georgeLockwood).
lobisomem(masonLockwood).
lobisomem(richardLockwood).
lobisomem(tylerLockwood).

humano(carolLockwood).
humano(elenaGilbert).
humano(johnGilbert).
humano(billForbes).
humano(elizabethFobes).
humano(mattDonovan).
humano(graysonGilbert).
humano(jeremyGilbert).
humano(gruseppeSalvatore).
humano(kellyDonovan).

hibridoOriginal(niklaus). 	

morreu(rose).
morreu(mirandaSommers).
morreu(kellyDonovan).
morreu(carolLockwood).
morreu(jonhGilbert).
morreu(richardLockwood).
morreu(masonLockwood).
morreu(georgeLockwood).
morreu(sheilaBennett).
morreu(emilyBennett).
morreu(ayanna).
morreu(esther).
morreu(jennaSommers).
morreu(katherinePierce).
morreu(vickiDonovan).
morreu(billForbes).
morreu(elizabethFobes).
morreu(mirandaSommers).
morreu(graysonGilbert).

progenitor(billForbes, carolineFobes).
progenitor(elizabethFobes, carolineFobes).
progenitor(emilyBennett, sheilaBennett).
progenitor(sheilaBennett, abbyBennett).
progenitor(abbyBennett, bonnieBennett).
progenitor(kellyDonovan, vickiDonovan).
progenitor(kellyDonovan, mattDonovan).
progenitor(mirandaSommers, jeremyGilbert).
progenitor(graysonGilbert, jeremyGilbert).
progenitor(isobelSaltzman, elenaGilbert).
progenitor(johnGilbert, elenaGilbert).
progenitor(richardLockwood, tylerLockwood).
progenitor(carolLockwood, tylerLockwood).
progenitor(gruseppeSalvatore, damonSalvatore).
progenitor(gruseppeSalvatore, stefanSalvatore).
progenitor(mikael, elijah).
progenitor(mikael, finn).
progenitor(mikael, kol).
progenitor(mikael, henrik).
progenitor(mikael, rebekah).
progenitor(esther, elijah).
progenitor(esther, finn).
progenitor(esther, kol).
progenitor(esther, henrik).
progenitor(esther, rebekah).
progenitor(esther, niklaus).
progenitor(unknownWereworf, niklaus).
progenitor(georgeLockwood, masonLockwood).
progenitor(georgeLockwood, richardLockwood).

pai(X,Y):-homem(X), progenitor(X,Y).
mae(X,Y):-mulher(X), progenitor(X,Y).
ancestral(X,Y):-progenitor(X,Y).
ancestral(X,Y):-progenitor(X,Z), ancestra(Z,Y).
vampiroDescendente(X):- vampiroOriginal(Y),transformouEmVampiro(Y,X).
vampiro(X):-transformouEmVampiro(Y,X).
humano(X):-tomouCura(X).
mal(X):-hibridoOriginal(X) ; hibridoOriginal(Y),mae(X,Y).
mal(X):-foiInferno(X); mulher(X),vampiroOriginal(X),mae(Y,X).
imortal(X):- vampiro(X).

