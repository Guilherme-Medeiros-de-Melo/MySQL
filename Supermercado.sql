CREATE TABLE Usuario 
( 
 ID INT PRIMARY KEY AUTO_INCREMENT, 
 Nome VARCHAR(20),  
 Tipo VARCHAR(20),  
 CPF VARCHAR(11),  
 Telefone INT
); 

CREATE TABLE Produto 
( 
 ID INT PRIMARY KEY AUTO_INCREMENT,   
 Nome VARCHAR(20),  
 Categoria VARCHAR(20),  
 Preço DOUBLE,  
 Qnt_estoque INT
); 

CREATE TABLE Pedido 
( 
 ID INT PRIMARY KEY AUTO_INCREMENT,  
 idUsuario INT,  
 idProduto INT
); 

ALTER TABLE Pedido ADD FOREIGN KEY(idUsuario) REFERENCES Usuario (ID);
ALTER TABLE Pedido ADD FOREIGN KEY(idProduto) REFERENCES Produto (ID);

INSERT INTO Usuario (nome, tipo, cpf, telefone) VALUES ("Tiago", "Usuario", "12345678910", "987654321");
INSERT INTO Usuario (nome, tipo, cpf, telefone) VALUES ("Maria", "Funcionario", "12345678910", "987654321");
INSERT INTO Usuario (nome, tipo, cpf, telefone) VALUES ("Carla", "Usuario", "12345678910", "987654321");
INSERT INTO Usuario (nome, tipo, cpf, telefone) VALUES ("Hugo", "Funcionario", "12345678910", "987654321");

INSERT INTO Produto (nome, categoria, preço, qnt_estoque) VALUES ("Carne", "Alimento", 30.50, 100);
INSERT INTO Produto (nome, categoria, preço, qnt_estoque) VALUES ("Ferramentas", "Utilitario", 100, 25);
INSERT INTO Produto (nome, categoria, preço, qnt_estoque) VALUES ("Papel Higienico", "Higiene", 5.99, 1000);

INSERT INTO Pedido (idUsuario, idProduto) VALUES (1, 2);
INSERT INTO Pedido (idUsuario, idProduto) VALUES (3, 3);
INSERT INTO Pedido (idUsuario, idProduto) VALUES (1, 1);
INSERT INTO Pedido (idUsuario, idProduto) VALUES (3, 2);
INSERT INTO Pedido (idUsuario, idProduto) VALUES (1, 3);

SELECT * FROM Usuario;
SELECT * FROM Produto;
SELECT * FROM Pedido;
