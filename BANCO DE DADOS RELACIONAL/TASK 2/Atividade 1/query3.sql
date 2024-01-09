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