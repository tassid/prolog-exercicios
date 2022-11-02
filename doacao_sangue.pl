%sangue(L,F). 
%doador(N,S,I,P,D,L,F). 
%receptor(N,L,F).

apto(N,S):-doador(N,S,I,P,D,_,_),(I>=16),(I<70),(P>=50),(D=saudavel).

doador_universal(L,F):-sangue(L,F),(L='O'),(F=negativo).
receptor_universal(L,F):-sangue(L,F),(L='AB'),(F=positivo).

compativel(N,R):-doador(N,_,_,_,_,L1,F1),receptor(R,L2,F2),pode_doar(L1,F1,L2,F2),apto(N,_).

sangue('A',positivo).
sangue('B',positivo).
sangue('AB',positivo).
sangue('O',positivo).
sangue('A',negativo).
sangue('B',negativo).
sangue('AB',negativo).
sangue('O',negativo).

pode_doar('O',positivo,'O',positivo).
pode_doar('O',positivo,'A',positivo).
pode_doar('O',positivo,'B',positivo).
pode_doar('O',positivo,'AB',positivo).

pode_doar('O',negativo,'O',negativo).
pode_doar('O',negativo,'O',positivo).
pode_doar('O',negativo,'A',positivo).
pode_doar('O',negativo,'B',positivo).
pode_doar('O',negativo,'AB',positivo).
pode_doar('O',negativo,'A',negativo).
pode_doar('O',negativo,'B',negativo).
pode_doar('O',negativo,'AB',negativo).

pode_doar('A',positivo,'A',positivo).
pode_doar('A',positivo,'AB',positivo).

pode_doar('A',negativo,'A',positivo).
pode_doar('A',negativo,'AB',positivo).
pode_doar('A',negativo,'A',negativo).
pode_doar('A',negativo,'AB',negativo).

pode_doar('B',positivo,'B',positivo).
pode_doar('B',positivo,'AB',positivo).

pode_doar('B',negativo,'B',positivo).
pode_doar('B',negativo,'AB',positivo).
pode_doar('B',negativo,'B',negativo).
pode_doar('B',negativo,'AB',negativo).

pode_doar('AB',positivo,'AB',positivo).

pode_doar('AB',negativo,'AB',positivo).
pode_doar('AB',negativo,'AB',negativo).

doador(maria,mulher,20,65,hiv,'A',positivo).
doador(joana,mulher,20,65,saudavel,'B',positivo).
doador(lucia,mulher,20,65,hepatite_b,'AB',positivo).
doador(jose,homem,30,80,saudavel,'O',negativo).
doador(carol,mulher,5,30,saudavel,'AB',positivo).

receptor(julia,'A',positivo).
receptor(amanda,'AB',positivo).
receptor(tassiane,'O',positivo).
receptor(joao,'B',negativo).
