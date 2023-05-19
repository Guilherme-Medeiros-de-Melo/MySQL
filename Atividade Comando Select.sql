create database db;
use db;

create table Funcionarios (
Codigo int not null auto_increment,  
PrimeiroNome varchar(20), 
SegundoNome varchar(20),  
UltimoNome varchar(20),  
DataNasci date, 
CPF varchar(11), 
RG varchar(11), 
Endereco varchar(30), 
CEP varchar(8), 
Cidade varchar(30), 
Fone varchar(11), 
CodigoDepartamento int, 
Funcao varchar(20), 
Salario float,
UNIQUE INDEX `Codigo_UNIQUE` (`Codigo` ASC));

create table Departamentos (
Codigo int not null auto_increment, 
Nome varchar(20), 
Localizacao varchar(20), 
CodigoFuncionarioGerente int not null,
UNIQUE INDEX `Codigo_UNIQUE` (`Codigo` ASC));
    
insert into Funcionarios(PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, Endereco, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario)
 Values('Agner','Zulmir','Malfoi','1987-11-30','11111111111','12345678911','Rua Sei de La','00440055','Uão Paulo','11932487159',1,'Vendedor',1080.99); 
insert into Funcionarios(PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, Endereco, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario)
 Values('Beatriz','Yahme','Guimaraes','2000-01-01','11111111114','12345679273','Rua NaEsquina','83028471','Tão Paulo','11984324876',1,'Analista',1400.01); 
insert into Funcionarios(PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, Endereco, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario)
 Values('Carlos','Xander','Kelvin','1994-06-24','11111111161','83756294736','Avenida AveUnida','28662100','São Paulo','11993847165',2,'Manutencao',2300.37); 
insert into Funcionarios(PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, Endereco, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario)
 Values('a','t','f','0001-01-01','0','0','0','0','0','0',1,'Supervisor',999.00); 

insert into Departamentos(Nome, Localizacao, CodigoFuncionarioGerente) Values('RH', 'São Paulo', 2);
insert into Departamentos(Nome, Localizacao, CodigoFuncionarioGerente) Values('Manutenção', 'São Paulo', 3);


select PrimeiroNome, UltimoNome from Funcionarios order by UltimoNome;
select * from Funcionarios order by Cidade;
select * from Funcionarios where salario > 1000 order by PrimeiroNome, SegundoNome, UltimoNome;
select DataNasci,PrimeiroNome from Funcionarios order by DataNasci DESC, PrimeiroNome;
select UltimoNome, PrimeiroNome, SegundoNome, Fone, Endereco, Cidade from Funcionarios order by UltimoNome,PrimeiroNome, SegundoNome;
select sum(Salario) as Total from funcionarios;
select f.PrimeiroNome, D.nome, F.Funcao from Funcionarios F Join Departamentos D on F.CodigoDepartamento = D.Codigo order by F.PrimeiroNome;
select f.PrimeiroNome, D.nome from Funcionarios F Join Departamentos D on F.Codigo = D.CodigoFuncionarioGerente order by D.Nome;
select D.Nome, SUM(F.Salario) AS Total From Departamentos D JOIN Funcionarios F ON D.Codigo = F.CodigoDepartamento GROUP BY D.Nome;
select D.nome, F.PrimeiroNome From Departamentos D Join Funcionarios F On D.codigo = F.CodigoDepartamento WHERE F.funcao = 'Supervisor' ORDER BY D.nome;
select COUNT(*) AS TotalFuncionarios FROM Funcionarios;
select AVG(Salario) AS Media From Funcionarios;
select D.nome, MIN(F.salario) From Funcionarios F Join Departamentos D ON F.codigodepartamento = D.codigo GROUP BY D.nome;
select PrimeiroNome, SegundoNome, UltimoNome From funcionarios Where SegundoNome IS NULL ORDER BY PrimeiroNome, UltimoNome;
select D.nome, F.PrimeiroNome FROM Departamentos D JOIN Funcionarios F On D.codigo = F.codigodepartamento Order by d.nome, f.primeironome;
select PrimeiroNome FROM funcionarios where cidade = 'Recife' And Funcao = 'Telefonista';
select primeironome from funcionarios where codigodepartamento = (select codigo from departamentos where nome = 'RH');

SELECT F.PrimeiroNome, D.nome From Funcionarios F JOIN Departamentos D On F.codigodepartamento = D.codigo Where F.salario > SOME(
	select Salario From Funcionarios Where Codigo IN (
		select CodigoFuncionarioGerente From Departamentos));

select * from Departamentos;

