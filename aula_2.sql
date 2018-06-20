select nome,bairro from aluno where bairro like '_entro' union

select nome,bairro from aluno where nome like 'Ma%';
/*************************************************************************************************/

/*Operadores de conjuntos*/


/*uniao -> union */
select nome,bairro from aluno where bairro like '_entro' 

union /*une os dois selects sem repetir*/

select nome,bairro from aluno where nome like 'Ma%' order by nome;
/*****************************************************/
select nome,bairro from aluno where bairro like '_entro' 

union all /*une os dois selects com reptição*/

select nome,bairro from aluno where nome like 'Ma%' order by nome;


/*************************************************************************************************/

/*Intersect mostra o que tem igual no dois conjuntos*/
select nome,bairro from aluno where bairro like '_entro' 

intersect /*ou intersect all não repete o resultado*/

select nome,bairro from aluno where nome like 'Ma%' order by nome;

/*************************************************************************************************/


/*Except mostra o que tem diferente no dois conjuntos*/
select nome,bairro from aluno where bairro like '_entro' 

except /* except all não repete o resultado*/

select nome,bairro from aluno where nome like 'Ma%' order by nome;

/*************************************************************************************************/

/*select into cria uma nova tabela com o resultado da consulta*/

select * into disciplinas_SI from disciplina where cod_curso = 'SI';  

select * from disciplinas_si ;

/***************************************************************************************************/

/*Funções de Grupo */

/*somente count não ignora valores nulos*/

/*AVG -> media*/
select avg(nota_final) from aluno_na_disc;
/*Count -> contar registro*/
select count(*) as Alunos from Aluno;
select count(*) as Disciplinas from disciplina;
select count(cod_disc_pre) from disciplina;
/*sum -> soma */
select sum(nota_final) as SOMA from aluno_na_disc;
/*max -> maximo */
select max(nota_final) as Maior_Nota, min(nota_final) as Menor_Nota from aluno_na_disc;
/*min -> minimo*/
select min(nota_final) as Menor_Nota from aluno_na_disc;
/**/
/*Group By separa por grupos*/

select d.cod_curso,max(a.nota_final) as Maior_Nota, min(a.nota_final) as Menor_Nota, avg(a.nota_final) from disciplina d, aluno_na_disc a where d.cod_disc = a.cod_disc group by d.cod_curso;

select sexo,bairro,count(*) as Numero_alunos from aluno group by sexo,bairro order by sexo,bairro;

select ad.cod_disc,count(*) as Quantidadefrom aluno_na_disc ad, aluno a where a.matric = ad.matric group by ad.cod_disc order by ad.cod_disc;

/*having equivalente a where para group by*/

select ad.cod_disc,count(*) as Quantidade from aluno_na_disc ad, aluno a where a.matric = ad.matric group by ad.cod_disc having count(*) <= 3 order by ad.cod_disc;

/*****************************************************************************************************/


