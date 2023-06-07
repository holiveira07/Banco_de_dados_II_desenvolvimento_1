
CREATE DATABASE auto_peças;

USE auto_peças;

CREATE TABLE vendas_produtos(
id_produtos INT NOT NULL AUTO_INCREMENT,
nome_produto VARCHAR (50) NOT NULL,
valor_produto DECIMAL (5,2) NOT NULL,
vendas_diarias INT,
PRIMARY KEY (id_produtos)
);

INSERT INTO vendas_produtos (nome_produto, valor_produto, vendas_diarias)
VALUES
('Aro 17 Nakata', '500.0', '3'), ('Molas dianteiras FIAT Palio 2005', '300.0', '9'), ('Chave de roda 17', '45.0', '5'), 
('Kit de Óleo Lubrificante 5w30', '190.0', '10'), ('Jogo Tapete Carro Borracha Universal 4 Peças', '27.0', '5'), 
('Pneu Aro 15 Goodyear Direction -  unidades', '975.0', '4'), ('Pneu Aro 15 Importado - 2 unidades', '837.0', '8'), 
('CAPA DE VOLANTE EM SINTÉTICO URUGUAIO ', '35.0', '8');


 DELIMITER $$
	CREATE PROCEDURE pr_vendas_diarias()
    BEGIN
    select * from vendas_produtos;
	END $$
 DELIMITER ;
 
 
COM ESSE COMANDO CHAMAMOS A PROCEDURE SEMPRE QUE PRECISARMOS E ASSIM TEMOS ACESSO 
A TODAS AS INFORMAÇÕES DA TABELA 

 CALL  pr_vendas_diarias;
 

 