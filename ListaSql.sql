create table supplier(

	s serial not null,
	sname varchar(50) not null,
	status int not null,
	city varchar(50) not null,

	constraint pk_supplier primary key(s)

);
create table parts(
	p serial not null,
	pname varchar(50) not null,
	color varchar(50) not null,
	weight int not null,
	city varchar(50),

	constraint pk_parts primary key(p)
);
create table sp(
	s int not null,
	p int not null,
	quant int not null,

	constraint pk_sp primary key(s,p),
	constraint fk_sup foreign key(s) references supplier(s),
	constraint fk_part foreign key(p) references parts(p)
	
);

insert into supplier(sname,status,city) values ('Smith',20,'London'),
('Jones',10,'Paris'),
('Blake',30,'Paris'),
('Clark',20,'London'),
('Adams',30,'Athens');

insert into parts(pname,color,weight,city) values ('Nut','Red',12,'London'), 
('Bolt','Green',17,'Paris'),
('Screw','Blue',17,'Rome'),
('Screw','Red',14,'London'),
('Cam','Blue',12,'Paris'),
('Cog','Red',19,'London');

insert into sp values(1,1,300),
(1,2,200),
(1,3,400),
(1,4,200),
(1,5,100),
(1,6,100),
(2,1,300),
(2,2,400),
(3,2,200),
(4,2,200),
(4,4,200),
(4,5,400);

/*1)*/
select s,status from supplier;

select s,status from supplier where city = 'Paris';

select sname,city from supplier where status = 10;

select * from parts;

select p,(weight*0.454) as peso from parts;

/* 2) */

select s,sname from supplier where city = 'Paris';

select avg(status) from supplier where city in ('Paris','Athenes');

select max(status) as Maior from supplier; 

select avg(weight) as Peso from parts where city = 'London';

select max(weight) as Peso_Max from parts group by city;

/*3)*/

select f.sname from supplier f, parts p, sp s where s.s = f.s and s.p = p.p and p.p = 2; 

select f.sname,p.pname from supplier f, parts p, sp s where f.s = s.s and p.p = s.p and f.city = p.city;

select f.sname,p.pname from supplier f, parts p, sp s where f.s = s.s and p.p = s.p and f.city = p.city and f.status <> 20;

select f.sname,p.pname from supplier f, parts p, sp s where f.s = s.s and p.p = s.p and f.city <> p.city;

/*select s,city from supplier group by s,city having city = city;*/

select p.pname,sum(s.quant) as Quantidade from sp s, parts p where p.p = s.p group by s.p,p.pname;

select p.pname,count(s.s) as Total_Fornecedores from sp s, parts p, supplier f where p.p = s.p and f.s = s.s group by s.p,p.pname having count(s.s) > 1;

select f.sname,count(s.p) as Total_Peças from sp s, parts p, supplier f where p.p = s.p and f.s = s.s group by s.s,f.sname having count(s.p) = 1;

select distinct(f.sname) from sp s, parts p, supplier f where p.p = s.p and f.s = s.s and p.color = 'Red';


