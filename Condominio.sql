create database Cond;
use Cond;

CREATE TABLE Apartamento 
( 
 N_Porta INT PRIMARY KEY AUTO_INCREMENT,  
 Qnt_Quarto INT NOT NULL,  
 Ocupacao VARCHAR(12) NOT NULL,  
 Proprietario VARCHAR(10) NOT NULL,  
 Telefone BIGINT NOT NULL 
);

CREATE TABLE Condominio 
( 
 N_Cond INT PRIMARY KEY,  
 Despesa FLOAT NOT NULL,  
 Data_Pagamento DATE NOT NULL,  
 Apartamento INT NOT NULL 
);

INSERT INTO Apartamento VALUES (N_Porta, 2, "Inquilino", "Carlos", 11954473654);
INSERT INTO Apartamento VALUES (N_Porta, 4, "Vazio", "Carlos", 11954473654);
INSERT INTO Apartamento VALUES (N_Porta, 3, "Proprietario", "Maria", 11964567155);

INSERT INTO Condominio VALUES (2, 3540.60, ‘2021-11-19’, 1);
INSERT INTO Condominio VALUES (1, 1160.00, ‘2022-03-19’, 3);

select * from Apartamento;
select * from Condominio;
