USE db_Classificados;


INSERT INTO tb_usuarios
VALUES
(1,'David Leandro','david@gmail.com','1234','Fisica','foto1');
INSERT INTO tb_usuarios
VALUES
(2,'Cristiano Ronaldo','cr7@gmail.com','4321','PJ','foto2');


INSERT INTO tb_anuncios
VALUES
('Ingresso Jogo Champions','Ingresso para primeira fileira jogo final da Champions League','@ingressos123','foto3','2022.07.21',1);
INSERT INTO tb_anuncios
VALUES
('Camisa Final','Camisa do CR7 da final da Champions','@camisas123','foto4','2022.07.21',2);


SELECT * FROM tb_usuarios;
SELECT * FROM tb_anuncios;


SELECT * FROM tb_usuarios
WHERE Id BETWEEN 0 AND 3;

SELECT * FROM tb_anuncios
WHERE descricao LIKE '%CR7%';


SELECT a.titulo AS 'Titulo Anuncio'
FROM tb_usuarios AS u 
RIGHT JOIN tb_anuncios AS a
	ON a.FK_usuario = u.id
WHERE u.id > 0;


SELECT COUNT(id) AS 'Quantidade de Usuarios' FROM tb_usuarios;
SELECT AVG(id) AS 'Média de Anuncios' FROM tb_anuncios;

