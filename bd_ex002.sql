create database loja_hotmart;

use loja_hotmart


create table info_produto (
idProduto int not null auto_increment,
Nome_produto varchar (45) null,
Preco_Normal decimal (10,2) null,
Preco_Desconto decimal (10,2) null,
primary key (idProduto)
);

CREATE TRIGGER tr_descontos BEFORE INSERT 
ON info_produto
FOR EACH ROW
SET  NEW.Preco_Desconto = (NEW.Preco_Normal * 0.90);

INSERT INTO info_produto 
(Nome_produto, Preco_normal)
values
('Comunidade Sobral de Tráfego', '2000.0')('Curso de Bolo de pote', '250.0'), ('curso de Introdução a Programação', '900.00');

select * from info_produto;


            ------------------TABELA COM O TRIGGER EM AÇÃO--------------------
---------------------------------------------------------------------------------------------------      
                                                                                                   -
 idProduto              Nome_produto                 Preco_Normal             Preco_Desconto       -
                                                                                                   -
    1            Comunidade Sobral de Tráfego          2000.00                   1800.00           -                                                                                                -
                                                                                                   -
    2               Curso de Bolo de Pote              250.00                    225.00            -                                                                    -
                                                                                                   -
    3         Curso de Introdução a Programação        900.00                    810.00            -                                                       -
----------------------------------------------------------------------------------------------------   