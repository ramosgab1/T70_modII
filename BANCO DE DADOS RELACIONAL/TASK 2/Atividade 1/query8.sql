SELECT tb_personagens.*,
tb_classes.nome AS nome_classe, tb_classes.descricao AS descricao_classe
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.id = 3;