/*--COMANDO PARA CRIAR O BANCO DE DADOS--*/

create database clientes_trafego_pago;

/*COMANDO PARA ACESSAR O BANCO DE DADOS*/
use clientes_trafego_pago;

/*--COMANDO PARA CRIAR A 1° TABELA --*/
create table clientes(
    id_cliente int not null auto_increment,
    nome_clientes varchar (40) not null,
    email_clientes varchar (50) not null,
    primary key (id_cliente)
)
/*--COMANDO PARA INSERIR DADOS NA TABELA--*/
insert into clientes
(nome_clientes, email_clientes)
values
('igor ', 'igormachado@gmail.com'), ('Carlos Eduardo', 'carlosmachado@gmail.com'), 
('Murillo Machado', 'murillomachado@gmail.com'), ('Gustavo Reis', 'gustavoreis@gmail.com');

/*--COMANDO PARA CRIAR A 2° TABELA--*/
create table plataforma_de_anuncio(
id_plataforma int not null auto_increment,
nome_plataforma varchar (20) not null,
investimento_mensal decimal (5.2) not null,
primary key (id_plataforma),
clientes_id int,
constraint foreign key (clientes_id)
references clientes (id_clientes)
);
/*--COMANDO PARA INSERIR DADOS NA TABELA--*/
insert into plataforma_de_anuncio
(nome_plataforma, investimento_mensal)
values
('Instagram', '500.0'), ('Google', '800.0'), ('Taboola', '700.0'), ('Linkedin', '400.0');

/*--Esse método retorna os registros que são comuns entre as tabelas.--*/

select nome_clientes, nome_plataforma from clientes 
inner join plataforma_de_anuncio on clientes.id_clientes = plataforma_de_anuncio.clientes_id;
 

 /*--Esse método apresenta todos os registros que estão em uma tabela, mesmo que não tenham 
 ligação com a outra. Além disso, ele apresenta os registros em comum entre as tabelas.--*/

 select nome_clientes, nome_plataforma from clientes 
 left join plataforma_de_anuncio on clientes.id_clientes = plataforma_de_anuncio.clientes_id;
 
 /*--Esse método apresenta todos os registros que estão em uma tabela, mesmo que não tenham ligação
 com a outra. Além disso, ele mostra os registros em comum entre as tabelas.--*/
 
 select nome_clientes, nome_plataforma from clientes 
 right join plataforma_de_anuncio on clientes.id_clientes = plataforma_de_anuncio.clientes_id;
 
 /*--Como resultado dessa consulta, obtemos todos os dados de ambas as tabelas.--*/
 
 select nome_clientes, nome_plataforma from clientes 
 left join plataforma_de_anuncio on clientes.id_clientes = plataforma_de_anuncio.clientes_id
 union
 select nome_clientes, nome_plataforma from clientes 
 right join plataforma_de_anuncio on clientes.id_clientes = plataforma_de_anuncio.clientes_id;
