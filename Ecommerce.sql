USE db_ecommerce;

SELECT p.Produto AS Venda,
		c.FK_Produto AS 'Descricao Produto'
FROM tb_compras AS c
LEFT JOIN tb_produtos AS p
	ON p.Id = c.FK_Produto
WHERE p.Produto LIKE 'Pro%';