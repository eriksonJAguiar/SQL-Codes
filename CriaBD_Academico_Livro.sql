CREATE TABLE Aluno
 (matric	char(5),
  nome		varchar(40) NOT NULL,
  endereco	varchar(60),
  bairro	varchar(30),
  dt_nasc	date,
  sexo		char(1),
  CONSTRAINT pk_matric primary key (matric));

CREATE TABLE Curso
 (cod_curso	char(5),
  descricao	varchar(40) NOT NULL,
  CONSTRAINT pk_cod_curso primary key (cod_curso));

CREATE TABLE Disciplina
 (cod_disc	char(5),
  descricao	varchar(30) NOT NULL,
  num_cred	smallint,
  cod_curso	char(5),
  cod_disc_pre	char(5),
  CONSTRAINT pk_cod_disc primary key (cod_disc),
  CONSTRAINT fk_cod_curso foreign key (cod_curso) references Curso(cod_curso),
  CONSTRAINT fk_disc_pre foreign key (cod_disc_pre) references Disciplina(cod_disc));

CREATE TABLE Aluno_Na_Disc
 (matric	char(5),
  cod_disc	char(5),
  periodo	date,
  nota_final	numeric(4,2),
  CONSTRAINT pk_aluno_disc primary key (matric,cod_disc,periodo),
  CONSTRAINT fk_matric foreign key (matric) references Aluno(matric),
  CONSTRAINT fk_cod_disc foreign key (cod_disc) references Disciplina(cod_disc));

CREATE TABLE Grade_Conceito
 (conceito	char(1),
  nota_inicial	numeric(4,2),
  nota_final	numeric(4,2),
  CONSTRAINT pk_conceito primary key (conceito),
  CONSTRAINT ck_conceito check (conceito in ('A', 'B', 'C', 'D', 'E')));

