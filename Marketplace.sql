USE db_marketplace;
SELECT * FROM tb_produtos
--set da coluna para ser impressa como "criador" e não "nome"
SELECT c.categoria AS Categoria,
		p.FK_Categoria AS 'Categoria do produto'
FROM tb_categoria AS c
RIGHT JOIN tb_produtos AS p
	ON p.FK_Categoria = c.categoria
WHERE p.FK_Categoria LIKE '%eis';