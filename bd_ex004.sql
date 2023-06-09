create database cadastro;
use cadastro;

create table cadastro_cliente(
	id_cadastro int not null auto_increment,
    nome_cliente varchar (50) not null,
	data_cadastro datetime,
    primary key (id_cadastro)
);

insert into cadastro_cliente 
(nome_cliente, data_cadastro)
values
('Antônia', '2023-06-07'), ('Henrique', '2023-06-07'), ('Ana', '2023-06-07'),
('Maria', '2023-06-07'), ('Octávio', '2023-06-07'),('Bruno', '2023-06-07'),
('Dalva', '2023-06-07'), ('Debora', '2023-06-07'), ('Deyse', '2023-06-07');

select data_cadastro, count(id_cadastro) as 'O total de cadastros é de:'
from  cadastro_cliente;

---------------RESULTADO---------------

data_cadastro  |  O Total de cadastros é de:

23-06-07       |        9