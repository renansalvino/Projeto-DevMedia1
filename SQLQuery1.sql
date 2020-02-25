CREATE DATABASE DevMedia1

USE DevMedia1
 
--Tabela categoria_produto
CREATE TABLE categoria (
id_categoria		INT PRIMARY KEY IDENTITY,
nome			VARCHAR (255)
);

--Tabela Protudo
CREATE TABLE Produto (
id_produto		INT PRIMARY KEY IDENTITY,
nome			VARCHAR (255),
preco			VARCHAR (255),
id_categoria	INT FOREIGN KEY REFERENCES categoria (id_categoria)				
);

--Tabela venda_produto
CREATE TABLE venda  (
id_venda		INT PRIMARY KEY IDENTITY,
valor			VARCHAR (255),
datavenda		DATE,
id_produto		INT FOREIGN KEY REFERENCES Produto (id_produto)
);

--DML (Data Manipulation laguage) --

INSERT INTO categoria  (nome)
VALUES ('Infantil'),('Informatica'),('Educaional');


INSERT INTO Produto ( nome, preco, id_categoria)
VALUES ('Bola','35.00',1),('Patinete','120.00',1),('Carrinho','15.00',1),('Skate','296.00',1); 



INSERT INTO venda (valor, datavenda,id_produto)
VALUES ('35.00','2018-05-15',1),('35.00','2018-06-15',1),('35.00','2018-07-15',1),('120.00','2018-07-15',2)




-- DQL
SELECT categoria.nome, Produto.nome, Produto.preco, Produto.id_categoria, venda.valor,venda.datavenda,venda.id_produto
FROM Produto, venda
INNER JOIN Produto
ON Produto.id_produto = venda.id_produto

 

ON P.id_produto =  V.id_produto