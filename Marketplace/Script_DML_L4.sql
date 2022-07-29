USE db_Marketplace;

INSERT INTO tb_usuarios
VALUES
(1,'David Leandro','david@gmail.com','1234','PF','foto1'),
(2,'Carolina Silva','carol@gmail.com','4321','PF','foto2');

INSERT INTO tb_produtos
VALUES
('Jogo','FIFA 23 PS4','450.00','foto3',1),
('Livro','Biblia NVI','90.00','foto4',2);

INSERT INTO tb_categorias
VALUES
('Games'),
('Leitura');

INSERT INTO tb_compras
VALUES
(1,3,'2022.07.10'),
(2,4,'2022.07.13');


SELECT * FROM tb_usuarios;
SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;
SELECT * FROM tb_compras;


SELECT * FROM tb_usuarios
WHERE Id BETWEEN 0 AND 3;

SELECT * FROM tb_produtos
WHERE valor LIKE '%450%';

SELECT * FROM tb_categorias
WHERE tb_categorias.categoria IN ('Games');

SELECT * FROM tb_compras
WHERE FK_produto LIKE '%4%';


SELECT u.nome AS Vendedor
FROM tb_usuarios AS u 
LEFT JOIN tb_produtos AS p 
	ON u.Id = p.id
WHERE u.id > 0;


SELECT COUNT(produto) AS 'Quantidado Produtos' FROM tb_produtos;
SELECT AVG(valor) AS 'Média Valores' FROM tb_produtos;
SELECT SUM(valor) AS 'Total Valores' FROM tb_produtos;
