USE db_classificados;

SELECT * FROM tb_anuncios

--set da coluna para ser impressa como "criador" e não "nome"
SELECT u.Nome AS Criador,
		p.Titulo AS 'Titulo Postagem'
FROM tb_usuarios AS u
INNER JOIN tb_anuncios AS p
	ON u.Id = p.FK_Usuario
WHERE p.Titulo LIKE '%itul%';