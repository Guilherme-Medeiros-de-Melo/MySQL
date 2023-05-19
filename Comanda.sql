CREATE TABLE Comanda
(
IDCo INT PRIMARY KEY AUTO_INCREMENT,
Data DATE,
IDC INT
);

CREATE TABLE Produto
(

IDP INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(20),
Preço FLOAT,
Tipo VARCHAR(20),
Qnt_estoque INT
);

CREATE TABLE Cliente
(
IDC INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(20)
);

CREATE TABLE Logradouro
(
IDC INT PRIMARY KEY,
Numero INT,
Rua VARCHAR(20),
Bairro VARCHAR(20),
Cidade VARCHAR(20)
);

CREATE TABLE Comanda_produto
(
IDCo INT PRIMARY KEY,
Qnt INT,
IDP INT
);

/*
ALTER TABLE Comanda ADD FOREIGN KEY(IDC) REFERENCES Cliente (IDC);

ALTER TABLE Logradouro ADD FOREIGN KEY(IDC) REFERENCES Cliente (IDC);

ALTER TABLE Comanda_produto ADD FOREIGN KEY(IDCo) REFERENCES Comanda (IDCo);

ALTER TABLE Comanda_produto ADD FOREIGN KEY(IDP) REFERENCES Produto (IDP);
*/

INSERT INTO Cliente (nome) VALUES ("Teste");
INSERT INTO Cliente (nome) VALUES ("Teste1");
INSERT INTO Produto (nome, preço, tipo, qnt_estoque) VALUES ("Carne", 20.50, "Alimento", 100);
INSERT INTO Produto (nome, preço, tipo, qnt_estoque) VALUES ("Sapato", 99.99, "Vestimenta", 40);
INSERT INTO Comanda (Data, IDC) VALUES (2022-02-02, 1);
INSERT INTO Comanda (Data, IDC) VALUES (2022-02-03, 2);
INSERT INTO Comanda_Produto VALUES (1, 4, 1);
INSERT INTO Comanda_Produto VALUES (2, 2, 2);

Select c.Data, c.IDC, co.IDP,  co.Qnt FROM Comanda as c, Comanda_Produto as co, Cliente as cl, Produto as pr where c.idc = 1;
Select c.IDC, c.Nome, p.IDP, p.Nome, p.preço FROM Cliente as c, Produto as p WHERE IDC = 1;
select * from Cliente;
