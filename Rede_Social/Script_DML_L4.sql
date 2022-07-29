USE db_RedeSocial;

INSERT INTO tb_usuarios
VALUES
(1,'David Leandro','david@gmail.com','1234','foto1'),
(2,'Carolina Silva','carol@gmail.com','4321','foto2');

INSERT INTO tb_postagens
VALUES
('Rio de Janeiro','Dia de folga na praia','2022.12.31','foto3',1,1),
('São Paulo','Passeando na Av Paulista','2022.12.25','foto3',1,2);

INSERT INTO tb_grupos
VALUES
('Viagens','Compartilhando Viagens','foto1',1);

INSERT INTO tb_inscritos
VALUES
('2022.07.23',1,1),
('2022.07.25',2,1);


SELECT * FROM tb_usuarios;
SELECT * FROM tb_postagens;
SELECT * FROM tb_grupos;
SELECT * FROM tb_inscritos;


SELECT * FROM tb_usuarios
WHERE Id BETWEEN 0 AND 3;

SELECT * FROM tb_postagens
WHERE tb_postagens.titulo IN ('São Paulo');

SELECT * FROM tb_grupos
WHERE grupo LIKE '%V%';


SELECT * FROM tb_usuarios AS u 
FULL JOIN tb_postagens AS p 
	ON u.Id = p.FK_Criador
FULL JOIN tb_grupos AS g 
	ON g.Id = p.FK_grupo
FULL JOIN tb_inscritos AS i 
	ON i.FK_grupo = g.id
WHERE u.nome LIKE '%A%';


SELECT COUNT(usuario) AS 'Quantidade Usuarios' FROM tb_usuarios;
SELECT AVG(id) AS 'Média Postagens' FROM tb_postagens;
SELECT SUM(id) AS 'Total Postagens' FROM tb_postagens;