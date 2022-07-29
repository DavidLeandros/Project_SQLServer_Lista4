CREATE DATABASE db_RedeSocial;

USE db_RedeSocial;

CREATE TABLE tb_usuarios (
	id INT NOT NULL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	usuario VARCHAR(255) NOT NULL,
	senha VARCHAR(255) NOT NULL,
	url_imagem VARCHAR(255) NOT NULL,
);

CREATE TABLE tb_postagens (
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	titulo VARCHAR(255) NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	data_postagem DATE NOT NULL,
	url_imagem VARCHAR(255) NOT NULL,
	FK_grupo INT NOT NULL,
	FOREIGN KEY (FK_grupo) REFERENCES tb_grupos (Id),
	FK_criador INT NOT NULL,
	FOREIGN KEY (FK_criador) REFERENCES tb_usuarios (Id),
);

CREATE TABLE tb_grupos (
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	grupo VARCHAR(255) NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	url_imagem VARCHAR(255) NOT NULL,
	FK_criador INT NOT NULL,
	FOREIGN KEY (FK_criador) REFERENCES tb_usuarios (Id),
);

CREATE TABLE tb_compras (
	data DATE NOT NULL,
	FK_usuario INT NOT NULL,
	FK_grupo INT NOT NULL,
	FOREIGN KEY (FK_usuario) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_grupo) REFERENCES tb_grupos (Id),
);
DROP TABLE tb_compras;

CREATE TABLE tb_inscritos (
	data DATE NOT NULL,
	FK_usuario INT NOT NULL,
	FK_grupo INT NOT NULL,
	FOREIGN KEY (FK_usuario) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_grupo) REFERENCES tb_grupos (Id),
);