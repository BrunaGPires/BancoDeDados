CREATE DATABASE DBLOJA;
USE DBLOJA;
CREATE TABLE produto(
	codproduto int auto_increment NOT NULL,
	descricaoproduto varchar(50) NOT NULL,
    unidade char(2) NOT NULL,
    preco float (5) NOT NULL,
    CONSTRAINT PK_produto PRIMARY KEY (codproduto)
);
CREATE TABLE cliente(
	codcliente int auto_increment NOT NULL,
    cliente varchar(50) NOT NULL,
    cpf char(11) NOT NULL,
    endereco char(30) NOT NULL,
    CONSTRAINT PK_cliente PRIMARY KEY (codcliente)
);
CREATE TABLE tipospagamento(
	codtppagamento int auto_increment NOT NULL,
    descricaotppagamento varchar(20) NOT NULL,
    CONSTRAINT PK_tipospagamento PRIMARY KEY (codtppagamento)
);
CREATE TABLE venda(
	nnf int NOT NULL,
    dtvenda date NOT NULL,
    codcliente int auto_increment NOT NULL,
    codtppagamento int auto_increment NOT NULL,
    vlvenda float(5) NOT NULL,
    CONSTRAINT PK_venda PRIMARY KEY (nnf, dtvenda),
	CONSTRAINT FK_cliente FOREIGN KEY (codcliente) REFERENCES cliente (codcliente) ON DELETE CASCADE,
    CONSTRAINT FK_tipospagamento FOREIGN KEY (codtppagamento) REFERENCES tipospagamento (codtppagamento)
);