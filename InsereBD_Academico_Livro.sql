set datestyle to postgres,dmy;
insert into aluno values ('A21', 'José Carlos Fonseca', 'Rua 1', 'Coisa Brava', '25-03-1987', 'M');
insert into aluno values ('A22', 'Ailton Bonifacio', 'Rua 2', 'Coisa Mansa', '26-11-1978', 'M');
insert into aluno values ('A23', 'Wandernelson Pereira', 'Rua 3', 'Barra Limpa', '23-04-1986', 'M');
insert into aluno values ('A24', 'Alfreda Alfredike', 'Rua 4', 'Barra Suja', '28-02-1989', 'F');
insert into aluno values ('A25', 'Marcio Campos Belo', 'Rua 5', 'Centro', '15-06-1986', 'M');
insert into aluno values ('A26', 'Agradecido Pereira da Silva', 'Rua 6', 'Centro', '11-09-1979', 'M');
insert into aluno values ('A27', 'Genézio Roberto Belo', 'Rua 7', 'Barra Suja', '12-04-1980', 'M');
insert into aluno values ('A28', 'Maria Clementina da Silva', 'Rua 8', 'Coisa Mansa', '25-03-1988', 'F');
insert into aluno values ('A29', 'Marceulo Roberto', 'Rua 9', 'Centro', '25-06-1987', 'M');
insert into aluno values ('A30', 'Mafaldo Sibipiruna', 'Rua 10', 'Centro', '26-02-1978', 'M');
insert into aluno values ('A31', 'Afanázio Augusto Souza', 'Rua 11', 'Centro', '23-10-1986', 'M');
insert into aluno values ('A32', 'Um dois três de Oliveira Quatro', 'Rua 9', 'Vila Vintem', '11-08-1987', 'M');
insert into aluno values ('A33', 'Zaqueu Melo Pestana', 'Rua 2', 'Vila Sésamo', '05-11-1978', 'M');
insert into aluno values ('A34', 'Luciano Malfadeza', 'Rua 2', 'Barra Suja', '21-04-1979', 'M');
insert into aluno values ('A35', 'Claudinéia Sebastiana Crispim', 'Rua 9', 'Coisa Mansa', '01-06-1979', 'F');
insert into aluno values ('A36', 'Estelafalda Peixoto de Azevedo', 'Rua 8', 'Barra Limpa', '01-05-1977', 'F');
insert into aluno values ('A37', 'Marianete Cortex Hair', 'Rua 7', 'Coisa Brava', '03-07-1977', 'F');
insert into aluno values ('A38', 'Renatenhaa Japorongo', 'Rua 8', 'Centro', '20-08-1980', 'F');
insert into aluno values ('A39', 'Andrelino Mechado', 'Rua 2', 'Centro', '21-06-1976', 'M');
insert into aluno values ('A40', 'Carlona BigHair', 'Rua 8', 'Barra Suja', '24-05-1988', 'F');
commit;


insert into curso values ('SI', 'Sistemas de Informação');
insert into curso values ('BIO', 'Biologia');
insert into curso values ('AGRO', 'Agronomia');
commit;



insert into disciplina values ('BDI', 'Banco de Dados I', 4, 'SI', null);
insert into disciplina values ('BDII', 'Banco de Dados II', 4, 'SI', 'BDI');
insert into disciplina values ('ENG1', 'Engenharia de Software I', 4, 'SI', null);
insert into disciplina values ('ENG2', 'Engenharia de Software II', 4, 'SI', 'ENG1');
insert into disciplina values ('ENG3', 'Engenharia de Software III', 4, 'SI', 'ENG2');
insert into disciplina values ('BOT', 'Botânica', 6, 'BIO', null);
insert into disciplina values ('GEN', 'Genética', 4, 'BIO', 'BOT');
insert into disciplina values ('INS', 'Instrumentação Cirurgica', 6, 'AGRO', null);
insert into disciplina values ('SOC', 'Primeiros Socorros', 4, 'AGRO', null);
commit;


insert into grade_conceito values ('A', 9.1, 10.0);
insert into grade_conceito values ('B', 8.1, 9.0);
insert into grade_conceito values ('C', 7.1, 8.0);
insert into grade_conceito values ('D', 5.1, 7.0);
insert into grade_conceito values ('E', 0.0, 5.0);
commit;


insert into aluno_na_disc values ('A21', 'BDI', '12-04-2008', 5.5);
insert into aluno_na_disc values ('A22', 'BDII', '12-04-2008', 6.1);
insert into aluno_na_disc values ('A23', 'ENG1', '12-04-2008', 6.3);
insert into aluno_na_disc values ('A24', 'ENG2', '12-04-2008', 8.0);
insert into aluno_na_disc values ('A25', 'ENG3', '12-04-2008', 8.1);
insert into aluno_na_disc values ('A26', 'BOT', '12-04-2008', 9.5);
insert into aluno_na_disc values ('A27', 'GEN', '12-04-2008', 9.7);
insert into aluno_na_disc values ('A28', 'INS', '12-04-2008', 3.6);
insert into aluno_na_disc values ('A29', 'SOC', '01-05-2008', 4.5);
insert into aluno_na_disc values ('A30', 'BDI', '01-05-2008', 6.2);
insert into aluno_na_disc values ('A31', 'BDII', '01-05-2008', 7.3);
insert into aluno_na_disc values ('A32', 'ENG1', '01-05-2008', 8.5);
insert into aluno_na_disc values ('A33', 'ENG2', '01-05-2008', 8.5);
insert into aluno_na_disc values ('A34', 'ENG3', '01-05-2008', 8.4);
insert into aluno_na_disc values ('A35', 'BOT', '01-05-2008', 9.3);
insert into aluno_na_disc values ('A36', 'GEN', '01-05-2008', 2.2);
insert into aluno_na_disc values ('A37', 'INS', '30-06-2008', 5.5);
insert into aluno_na_disc values ('A38', 'SOC', '30-06-2008', 6.3);
insert into aluno_na_disc values ('A39', 'BDI', '30-06-2008', 7.7);
insert into aluno_na_disc values ('A40', 'BDI', '30-06-2008', 7.9);
insert into aluno_na_disc values ('A21', 'BDII', '30-06-2008', 8.2);
insert into aluno_na_disc values ('A22', 'ENG1', '30-06-2008', 8.9);
insert into aluno_na_disc values ('A23', 'ENG2', '30-06-2008', 7.6);
insert into aluno_na_disc values ('A24', 'ENG3', '30-06-2008', 6.4);
insert into aluno_na_disc values ('A25', 'ENG3', '30-06-2008', 3.2);
insert into aluno_na_disc values ('A26', 'GEN', '30-06-2008', 8.5);
insert into aluno_na_disc values ('A27', 'BOT', '30-06-2008', 6.3);
insert into aluno_na_disc values ('A28', 'SOC', '30-06-2008', 4.5);
insert into aluno_na_disc values ('A29', 'INS', '30-06-2008', 5.2);
insert into aluno_na_disc values ('A21', 'ENG1', '30-06-2008', 6.9);
commit;