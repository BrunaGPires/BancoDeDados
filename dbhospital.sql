CREATE DATABASE DBHOSPITAL;
USE DBHOSPITAL;
CREATE TABLE hospital(
	id int auto_increment not null primary key,
    cidade char(30) not null,
    nome varchar(50) not null,
    qtd_leitos int not null
);

INSERT INTO hospital VALUES (null, 'Novo Hamburgo', 'Regina', 30);
INSERT INTO hospital VALUES (null, 'Novo Hamburgo', 'Unimed', 19);
INSERT INTO hospital VALUES (null, 'Campo Bom', 'Lauro Reus', 32);
INSERT INTO hospital VALUES (null, 'São Leopoldo', 'Centenário', 18);
INSERT INTO hospital VALUES (null, 'Porto Alegre', 'São Lucas da PUCRS', 24);
INSERT INTO hospital VALUES (null, 'Porto Alegre', 'Cristo Redentor', 5);
INSERT INTO hospital VALUES (null, 'Porto Alegre', 'Ernesto Dorneles', 9);
INSERT INTO hospital VALUES (null, 'Canoas', 'Nossa Senhora das Graças', 12);

SELECT cidade, SUM(qtd_leitos) FROM hospital GROUP BY cidade HAVING SUM(qtd_leitos) >=20;