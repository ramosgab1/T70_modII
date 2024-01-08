CREATE DATABASE db_emporioGEEK;

USE db_emporiogeek; 

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT, 
produto VARCHAR(255) NOT NULL, 
preco DECIMAL(6,2) NOT NULL, 
categoria VARCHAR(255) NOT NULL, 
disponibilidade VARCHAR(255) NOT NULL, 
descricao VARCHAR(1000),
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(produto, preco, categoria, disponibilidade, descricao)
VALUES ("Jessica Jones Vol. 1", 29.99, "Quadrinhos", "Em estoque", "História em Quadrinho Jessica Jones, primeiro volume."); 
INSERT INTO tb_produtos(produto, preco, categoria, disponibilidade, descricao)
VALUES ("X-MEN Vol. 4", 29.99, "Quadrinhos", "Fora de estoque", "História em Quadrinho X-MEN, quarto volume."); 
INSERT INTO tb_produtos(produto, preco, categoria, disponibilidade, descricao)
VALUES ("HADES", 49.99, "Jogos", "Em estoque", "Jogo Rogue-Like para Nintendo Switch."); 
INSERT INTO tb_produtos(produto, preco, categoria, disponibilidade, descricao)
VALUES ("BALDUR'S GATE 3", 229.99, "Jogos", "Em estoque", "Jogo Rogue-Like para PC."); 
INSERT INTO tb_produtos(produto, preco, categoria, disponibilidade, descricao)
VALUES ("FIGMA Hatsune Miku", 39.99, "Colecionáveis", "Fora de estoque", "Boneca colecionável da VOCALOID Hatsune Miku."); 
INSERT INTO tb_produtos(produto, preco, categoria, disponibilidade, descricao)
VALUES ("Action Figure Harley Quinn", 229.99, "Colecionáveis", "Em estoque", "Boneca colecionável da vilã Harley Quinn.");
INSERT INTO tb_produtos(produto, preco, categoria, disponibilidade, descricao)
VALUES ("Casaco OVERWATCH - Brigitte", 129.99, "Vestuário", "Em estoque", "Casaco Overwatch Brigitte.");
INSERT INTO tb_produtos(produto, preco, categoria, disponibilidade, descricao)
VALUES ("Meias Harry Potter - Corvinal", 39.99, "Vestuário", "Fora de estoque", "Par de meias Corvinal.");

SELECT * FROM tb_produtos; 
SELECT * FROM tb_produtos WHERE preco > 500.00; 
SELECT * FROM tb_produtos WHERE preco < 500.00; 
UPDATE tb_produtos SET preco = 500.00 WHERE id = 4; 

SELECT * FROM tb_produtos; 