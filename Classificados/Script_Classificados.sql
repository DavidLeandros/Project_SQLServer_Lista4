CREATE DATABASE db_Classificados;

USE db_Classificados;

CREATE TABLE tb_usuarios (
	id INT NOT NULL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	usuario VARCHAR(255) NOT NULL,
	senha VARCHAR(255) NOT NULL,
	pessoa VARCHAR(255) NOT NULL,
	url_imagem VARCHAR(255) NOT NULL,
);

CREATE TABLE tb_anuncios (
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	titulo VARCHAR(255) NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	contato VARCHAR(255) NOT NULL,
	url_imagem VARCHAR(255) NOT NULL,
	data DATE,
	FK_usuario INT NOT NULL,
	FOREIGN KEY (FK_usuario) REFERENCES tb_usuarios (Id),
);