CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;
 
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_classe BIGINT,
    nivel INT,
    poder_de_ataque INT, 
    poder_de_defesa INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);
 
-- CLASSES 
INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Um combatente corpo a corpo especializado em resistência e dano físico.'),
('Mago', 'Um usuário de magia que se especializa em causar dano mágico à distância.'),
('Arqueiro', 'Um especialista em combate à distância, usando arcos ou outras armas de longo alcance.'),
('Ladrão', 'Um personagem furtivo que se especializa em ataques rápidos e furtivos.'),
('Clerigo', 'Um curandeiro que se especializa em curar aliados e fornecer suporte durante o combate.');

-- PERSONAGENS
INSERT INTO tb_personagens (nome, id_classe, nivel, poder_de_ataque, poder_de_defesa) VALUES
('Alistair Ironheart', 1, 10, 4000, 2000), -- Guerreiro
('Lyra Fireheart', 2, 8, 3000, 1500),  -- Mago
('Sariel Windrider', 3, 9, 2000, 1000),  -- Arqueiro
('Elara Shadowblade', 4, 7, 3000, 1000),  -- Ladrão
('Aurora Lightbringer', 5, 4, 1000, 5000), -- Clerigo
('Kael Stonefist', 1, 5, 4000, 2000),  -- Guerreiro
('Thorne Blackwood', 2, 3, 3000, 1500),  -- Mago
('Draven Darkthorn', 3, 6, 2000, 1000);  -- Arqueiro

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_de_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_de_ataque BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.*, tb_classes.nome AS nome_classe,
tb_classes.descricao AS descricao_classe
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;

SELECT tb_personagens.*,
tb_classes.nome AS nome_classe, tb_classes.descricao AS descricao_classe
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.id = 3;
