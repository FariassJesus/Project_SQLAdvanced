USE db_redesocial;

--set da coluna para ser impressa como "criador" e não "nome"
SELECT u.Nome AS Usuario,
		g.FK_Criador AS 'Criador do grupo'
FROM tb_usuarios AS u
FULL OUTER JOIN tb_grupos AS g
	ON u.Id = g.FK_Criador
WHERE u.Id LIKE g.FK_Criador;