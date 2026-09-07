/* trabalho - Criar a estrutura de tabelas  */


create table treinador (
codigo int         not null,
nome   varchar(50) not null,
primary key (codigo));

create table preparador (
codigo int         not null,
nome   varchar(50) not null,
primary key (codigo));

create table modalidade (
codigo          int not null,
nome            varchar(50) not null,
codtreinador    int not null,
codpreparador   int not null,
primary key (codigo),
foreign key (codtreinador)  references treinador (codigo),
foreign key (codpreparador) references preparador (codigo));


create table atleta (
codigo  int not null,
nome    varchar(50) not null,
sexo    varchar(1) not null,
datanasc date not null,
peso     decimal(5,2) not null,
altura   decimal(3,2) not null, 
paisorigem   varchar(50) not null,
codmodalidade int not null,
primary key (codigo),
foreign key (codmodalidade) references modalidade(codigo));

create table inscricao (
codigo  int  not null,
data    date not null,
local   varchar(50) not null,
valor   decimal(6,2) not null,
codmodalidade int not null,
codatleta     int not null,
primary key (codigo),
foreign key (codmodalidade) references modalidade(codigo),
foreign key (codatleta)     references atleta(codigo));
-------------------------------------------------------------
insert into treinador (codigo,nome)
values(1,'	jairo');

insert into preparador (codigo,nome)
values (1, 'bairo');

insert into modalidade (codigo,nome,codtreinador,codpreparador)
values (1,'futebol',1,1);

insert into atleta (codigo,nome,sexo,datanasc,peso,altura,paisorigem,codmodalidade)
values (1,'Muralha','M','10/11/1989',100,1.90,'Brasil',1);

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (1,'13/01/2025','EUA',160.00,1,1)

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (12,'13/05/2025','Fiji',160.00,1,1)

insert into atleta (codigo,nome,sexo,datanasc,peso,altura,paisorigem,codmodalidade)
values (11,'Messi','M','24/06/1987',60,1.69,'Argentina',1);

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (11,'13/07/2027','Caribe',456.00,1,11)

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (112,'13/07/2029','Malaui',700.00,1,11)
------------------------------------------------------------------------
insert into treinador (codigo,nome)
values(2,'bruno');

insert into preparador (codigo,nome)
values (2, 'bruna');

insert into modalidade (codigo,nome,codtreinador,codpreparador)
values (2,'volei',2,2);

insert into atleta (codigo,nome,sexo,datanasc,peso,altura,paisorigem,codmodalidade)
values (2,'Jacare','M','06/07/2009',61,1.74,'Brasil',2);

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (2,'13/08/2026','França',50.00,2,2)

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (21,'13/08/2028','Cingapura',500.00,2,2)

insert into atleta (codigo,nome,sexo,datanasc,peso,altura,paisorigem,codmodalidade)
values (22,'Heuller','M','23/04/2009',74,1.81,'Mexico',2);

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (22,'23/06/2025','Alemanha',508.00,2,22)

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (222,'23/01/2025','Colombia',507.00,2,22)

---------------------------------------------------------------------

insert into treinador (codigo,nome)
values(3,'	guilherme');

insert into preparador (codigo,nome)
values (3, 'mayara');

insert into modalidade (codigo,nome,codtreinador,codpreparador)
values (3,'basquete',3,3);

 insert into atleta (codigo,nome,sexo,datanasc,peso,altura,paisorigem,codmodalidade)
values (3,'Coral','M','12/10/1973',90,1.87,'Angola',3);

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (3,'23/03/2025','Espanha',678.00,3,3)

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (31,'23/10/2025','NovaZelandia',700.00,3,3)


insert into atleta (codigo,nome,sexo,datanasc,peso,altura,paisorigem,codmodalidade)
values (33,'Locatelli','M','01/10/2008',130,1.95,'Chipre',3);

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (33,'18/03/2025','Portugal',300.00,3,33)

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (333,'18/03/2027','Suecia',900.00,3,33)

---------------------------------------------------------------------


insert into treinador (codigo,nome)
values(4,'natan');

insert into preparador (codigo,nome)
values (4, 'enzopasta');

insert into modalidade (codigo,nome,codtreinador,codpreparador)
values (4,'corrida',4,4);

insert into atleta (codigo,nome,sexo,datanasc,peso,altura,paisorigem,codmodalidade)
values (4,'Bif','M','16/06/1987',65,1.78,'Moldavia',4);

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (4,'18/08/2031','Suiça',340.00,4,4)

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (41,'30/08/2031','Itália',370.00,4,4)

insert into atleta (codigo,nome,sexo,datanasc,peso,altura,paisorigem,codmodalidade)
values (44,'Vitinho','M','12/01/1950',46,1.60,'Cuba',4);

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (44,'25/08/2034','Russia',440.00,4,44)

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (444,'25/08/2034','Sérvia',441.00,4,44)
--------------------------------------------------------------------

insert into treinador (codigo,nome)
values(5,'panatto');

insert into preparador (codigo,nome)
values (5, 'sofia');

insert into modalidade (codigo,nome,codtreinador,codpreparador)
values (5,'tenisdemesa',5,5);

insert into atleta (codigo,nome,sexo,datanasc,peso,altura,paisorigem,codmodalidade)
values (5,'Espada','F','01/02/2001',30,2.00,'Honduras',5);

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (5,'28/08/2034','Dinamarca',140.00,5,5)

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (51,'28/11/2034','Eslováquia',190.00,5,5)

insert into atleta (codigo,nome,sexo,datanasc,peso,altura,paisorigem,codmodalidade)
values (55,'Mariah','F','12/08/1996',210,1.50,'SanMarino',1);

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (55,'28/11/2032','Eslovenia',110.00,5,55)

insert into inscricao (codigo,data,local,valor,codmodalidade,codatleta)
values (555,'28/12/2032','India',80.00,5,55)

