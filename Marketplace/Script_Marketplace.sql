CREATE DATABASE db_Marketplace;

USE db_Marketplace;

CREATE TABLE tb_usuarios (
	id INT NOT NULL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	usuario VARCHAR(255) NOT NULL,
	senha VARCHAR(255) NOT NULL,
	tipo VARCHAR(255) NOT NULL,
	url_imagem VARCHAR(255) NOT NULL,
);

CREATE TABLE tb_produtos (
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	produto VARCHAR(255) NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	valor FLOAT NOT NULL,
	url_imagem VARCHAR(255) NOT NULL,
	FK_categoria INT NOT NULL,
	FOREIGN KEY (FK_categoria) REFERENCES tb_categorias (Id),
);

CREATE TABLE tb_categorias (
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	categoria VARCHAR(255) NOT NULL,
);

CREATE TABLE tb_compras (
	FK_usuario INT NOT NULL,
	FK_produto INT NOT NULL,
	data DATE,
	FOREIGN KEY (FK_usuario) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_produto) REFERENCES tb_produtos (Id),
);