create database bd;

use bd;

SET SQL_SAFE_UPDATES = 0;

create table cliente(
	cpf int8 key not null,
    nome VARCHAR(30),
    data_nasc DATE,
    endereço VARCHAR(30),
    CEP INT,
    bairro VARCHAR(30),
    cidade VARCHAR(30),
    UF VARCHAR(2)
    );
    
alter table cliente
add column data_ult_compra DATE after UF;

Insert into cliente VALUE(04496332780, "Jôao da Silva", '1969-11-25', "Rua Antônio Numes", 88045963, "Palmeiras", "Londrina", "PR", '0000-01-01');
Insert into cliente VALUE(05485031490, "Ana Regina Fagundes", '1986-09-21', "Rua Palmeias Novas", 88078923, "Leblon", "Rio de Janeiro", "RJ", '0000-01-01');
Insert into cliente VALUE(03350314905, "Fernando Soares", '1990-05-03', "Rua Palmeiras Novas", 88048917, "Copacabana", "Rio de Janeiro", "RJ", '0000-01-01');

Select * from cliente where cidade = 'Rio de Janeiro';

Delete from cliente where cidade = 'Londrina';