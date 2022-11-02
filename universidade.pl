%aluno(A,U,D).
%professor(P,D,U).
%universidade(I,U).
%nota(N,A,D).
 
aprovado(N,A,D) :- nota(N,A,D),(N>=6).
reprovado(N,A,D) :- nota(N,A,D),(N<6).
 
aluno(amanda, medianeira, paradigma).
aluno(amanda, medianeira, redes_1).
aluno(amanda, medianeira, sistemas_operacionais).
aluno(amanda, medianeira, linguagens_formais).
aluno(amanda, medianeira, eng_software_1).
aluno(amanda, medianeira, comp_grafica).
aluno(amanda, medianeira, arq_avancada_hardware).
aluno(tassiane, medianeira, paradigma).
aluno(tassiane, medianeira, redes_1).
aluno(tassiane, medianeira, sistemas_operacionais).
aluno(tassiane, medianeira, linguagens_formais).
aluno(tassiane, medianeira, eng_software_1).
aluno(tassiane, medianeira, comp_grafica).
aluno(tassiane, medianeira, arq_avancada_hardware).
aluno(joao, santa_helena, paradigma).
aluno(maria, campo_mourao, comp_grafica).
professor(alessandra, paradigma, medianeira).
professor(davi, comp_grafica, medianeira).
professor(neylor, redes_1, medianeira).
professor(hamilton, sistemas_operacionais, medianeira).
professor(lamb, eng_software_1, medianeira).
professor(pessini, linguagens_formais, medianeira).
professor(pessini, arq_avancada_hardware, medianeira).
professor(ricardo, calculo_1, santa_helena).
professor(michele, geometria_analitica, santa_helena).
professor(jussemara, estatistica, santa_helena).
professor(carlos, calculo_2, santa_helena).
professor(ana, libras, santa_helena).
universidade(utfpr, medianeira).
nota(7, amanda, paradigma).
nota(6, amanda, redes_1).
nota(6, tassiane, redes_1).
nota(5, maria, comp_grafica).
