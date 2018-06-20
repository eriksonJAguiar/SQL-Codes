/*consultas e subconsultas com 1 linha*/

/*operadores =, >, >=, <=, < e <>*/

select d.descricao from disciplina d where d.num_cred = (select num_cred from disciplina where descricao = 'Genética');


select distinct(ad.matric),a.nome,ad.nota_final from aluno_na_disc ad,aluno a where a.matric = ad.matric and ad.nota_final > 
(select avg(nota_final) from aluno_na_disc) order by nota_final desc;


select nome,bairro,dt_nasc from aluno where dt_nasc > (select dt_nasc from aluno where matric = 'A33') 
and bairro = (select bairro from aluno where matric ='A38');

select cod_curso,count(*) from disciplina group by cod_curso having count(*) > (select count(*) from disciplina where cod_curso = 'BIO');

/*subconsulta que retornam várias linhas*/

/* all ->  */
/* any -> compara todos os valores da consulta até que um valor seja verdadeiro ele retoorna verdadeiro*/
/* in -> retorna qualquer elemento ou not in retorna todos exceto os que estão no in*/


select nome,bairro from aluno where bairro in (select distinct(bairro) from aluno where nome like 'A%');

select matric from aluno_na_disc where (cod_disc,nota_final) in (select cod_disc,nota_final from aluno_na_disc where matric = 'A33'); 

/*Visão - representação customizada de uma ou mais tabelas ou mais visões */

/*create view exemplo as select ***/

create view nome_alunas as select nome from aluno where sexo = 'F';

/*create or replace - cria ou modifica*/

/*drop view - exclui a view */

select * from nome_alunas;