CREATE DATABASE db_EComerce;

USE db_EComerce;

CREATE TABLE tb_usuarios (
	id INT NOT NULL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	usuario VARCHAR(255) NOT NULL,
	senha VARCHAR(255) NOT NULL,
	documento VARCHAR(255) NOT NULL,
);

CREATE TABLE tb_produtos (
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	produto VARCHAR(255) NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	valor FLOAT NOT NULL,
	url_imagem VARCHAR(255) NOT NULL,
	estoque INT NOT NULL,
	categoria VARCHAR(255) NOT NULL,
);

CREATE TABLE tb_compras (
	FK_usuario INT,
	FK_produto INT,
	data DATE,
	FOREIGN KEY (FK_usuario) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_produto) REFERENCES tb_produtos (Id),
);