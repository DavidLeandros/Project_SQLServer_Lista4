USE db_EComerce;

INSERT INTO tb_usuarios
VALUES
(1,'David Leandro','david@gmail.com','1234','417453984'),
(2,'Carolina Silva','carol@gmail.com','4321','234563459');


INSERT INTO tb_produtos
VALUES
('Blusa','Blusa Moletom Preta G','150.00','foto1','10','Inverno'),
('Vestido','Vestido Vermelho M','80.00','foto2','13','Verão');


INSERT INTO tb_compras
VALUES
(1,1,'2022.07.28'),
(2,2,'2022.07.28');


SELECT * FROM tb_usuarios;
SELECT * FROM tb_produtos;
SELECT * FROM tb_compras;


SELECT * FROM tb_usuarios
WHERE Id BETWEEN 0 AND 3;

SELECT * FROM tb_produtos
WHERE valor LIKE '%80%';

SELECT * FROM tb_compras
WHERE FK_produto LIKE '%2%';


SELECT u.Nome AS Criador, p.produto AS 'Titulo Produto', c.data
FROM tb_usuarios AS u 
INNER JOIN tb_produtos AS p 
	ON u.id = p.Id
INNER JOIN tb_compras AS c 
	ON c.FK_produto = p.Id
WHERE u.id > 0;


SELECT COUNT(produto) AS 'Quantidado Produtos' FROM tb_produtos;
SELECT AVG(valor) AS 'Média Valores' FROM tb_produtos;
SELECT SUM(valor) AS 'Total Valores' FROM tb_produtos;
