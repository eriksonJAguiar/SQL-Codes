create table Fornecedor(
    codigo varchar(2) not null,
    nome varchar(100) not null,
    morada varchar(200) not null,
    
    constraint pk_fornecedor primary key(codigo)
    
);

create table Encomenda(
	cod_encomenda int not null,
	cod_fornec varchar(2) not null,

	constraint pk_Encomenda primary key(cod_encomenda),
	constraint fk_Encomenda_fornec foreign key(cod_fornec) references Fornecedor(codigo)
);
create table Peca(
	cod_peca varchar(3) not null,
	designicao varchar(100) not null,
	constraint pk_Peca primary key(cod_peca)

);

create table Contem(
	cod_encom int not null,
	cod_peca varchar(3) not null,
	quant int not null,
	
	constraint pk_contem primary key(cod_encom,cod_peca),
	constraint fk_contem_peca foreign key(cod_peca) references Peca(cod_peca),
	constraint fk_contem_ecom foreign key(cod_encom) references Encomenda(cod_encomenda)
);

/*criar tabelas até aqui*/


select * from fornecedor order by nome;


/*inserir informações tabela fornecedor*/
insert into fornecedor values('F1','Ferripeças','Av EUA, 238 - Lisboa');
insert into fornecedor values('F2','Agais SA','Av 24 Julho,5 - Lisboa');
insert into fornecedor values('F3','Almiro SA','R. Semfim,27 - Porto');
insert into fornecedor values('F4','Ferrpeças','Av. Semnome, 587 - Paraná');




/*iserir informação tabela peças*/
insert into peca values('A20','Velas X883');
insert into peca values('C40','Anilhas');
insert into peca values('C43','Terminais bateria S22'); 
insert into peca values('C50','Filtro Óleo');//
insert into peca values('D30','Filtro Ar');//
insert into peca values('E32','Base XF500');//

/*inserir encomenda*/
insert into encomenda values(2100,'F1');
insert into encomenda values(2150,'F1');
insert into encomenda values(2200,'F1');
	
/*inserir cotem*/
insert into contem values(2100,'C40',30);
insert into contem values(2150,'A20',45);
insert into contem values(2150,'E32',8);
insert into contem values(2200,'C40',10);
insert into contem values(2200,'D30',20);
insert into contem values(2200,'C43',30);

/*deletes*/

delete from fornecedor where codigo = 'F4';


/*updates*/
update fornecedor set nome = 'Gomes & Gomes Lda.' where codigo = 'F1';

update fornecedor set nome = 'Microsoft' where nome like 'F%';

update peca set cod_fornec = 'F3' where cod_encomenda = 2150;

update peca set cod_peca = 'C43' where cod_peca = 'A43';
update peca set cod_peca = 'C50' where cod_peca = 'A50';
update peca set cod_peca = 'D30' where cod_peca = 'C30';
update peca set cod_peca = 'E32' where cod_peca = 'A32';

update contem set quant = 25 where cod_encom = 2150 and cod_peca = 'E32';
select *from contem;


/*comandas para aterar tabela*/

alter table peca
	alter column desigi type varchar(3);

alter table contem
	alter column cod_peca type varchar(3);

/*alterar campo check*/
alter table Contem
	add check(quant > 5 and quant < 100);	

alter table peca
	add column double preco;
/*selects*/

select *from peca;
	

select *from encomenda;


select *from encomenda e, fornecedor f where f.codigo = e.cod_fornec; /*Join*/

select (c.cod_encom,p.cod_peca,p.designicao) from contem c, peca p,fornecedor f where c.cod_peca = p.cod_peca and p.designicao = 'Antilhas'; 

select (e.cod_encomenda,p.cod_peca,p.designicao,f.nome) from contem c, peca p,fornecedor f,encomenda e where c.cod_peca = p.cod_peca and p.designicao = 'Antilhas' and c.cod_encom = e.cod_encomenda and e.cod_fornec = f.codigo;

select (p.cod_peca,p.designicao) from fornecedor f, encomenda e, contem c, peca p where f.codigo = e.cod_fornec and e.cod_encomenda = c.cod_encom and; 

select cod_peca,quant,quant*1.1 as quant10 from contem;

select current_date;

select 2*(5+10) as result;


select cod_peca || designicao from peca order by cod_peca;


select cod_peca,designicao from peca order by 2;



select quant from contem where quant between 10 and 20;


select * from peca where cod_peca in ('C40','E32');

select * from peca where cod_peca not in ('C40','E32');

select * from peca where cod_peca is not null; 

select count(p.cod_peca) from encomenda e, contem c, peca p where e.cod_encomenda = c.cod_encom and c.cod_peca = p.cod_peca and e.cod_encomenda = 2150;

select count(distinct(p.cod_peca)) from encomenda e, contem c, peca p where e.cod_encomenda = c.cod_encom and c.cod_peca = p.cod_peca;




