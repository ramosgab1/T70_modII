CREATE DATABASE db_pizzaria_legal; -- CRIA DATABASE 

USE db_pizzaria_legal; -- ATIVA O USO DA DATABASE 

-- CRIA AS TABELAS
CREATE TABLE IF NOT EXISTS tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(100) NOT NULL,
    tempero VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tamanho ENUM ('Pequena', 'Média', 'Grande') NOT NULL, 
    preco DECIMAL(10, 2) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Fácil acesso caso precise apagar tabelas. 
DROP TABLE tb_categorias; 

-- Inserir elementxooos!
INSERT INTO tb_categorias (tipo, tempero)
VALUES ('Tradicional', 'Aromático'),
       ('Gourmet', 'Apimentado'),
       ('Vegetariana', 'Leve'),
       ('Especial', 'Exótico'), -- O que seria uma pizza exótica eu não sei.
       ('Doce', 'Adocicado');
    
INSERT INTO tb_pizzas (nome, tamanho, preco, categoria_id)
VALUES ('Calabresa', 'Média', 52.90, 1),
       ('Margherita', 'Pequena', 32.90, 2),
       ('Frango com Catupiry', 'Grande', 63.90, 2),
       ('Vegetariana', 'Média', 46.90, 3),
       ('Portuguesa', 'Grande', 33.90, 2),
       ('Quatro Queijos', 'Média', 54.90, 4),
       ('Pepperoni', 'Grande', 86.90, 2),
	   ('Napolitana', 'Grande', 112.90, 5);
       
-- Para visualizar se tá tudo ok: 
SELECT * FROM tb_pizzas; 

-- Preços maiores que 45 reais. 
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Preços entre 50 e 100 reais
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- Que tenha M no nome 
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- Fazendo JOIN (o AS dá um apelido a categoria)  
SELECT tb_pizzas.*, tb_categorias.tipo AS categoria_tipo, tb_categorias.tempero AS categoria_tempero
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

-- Todas as pizzas gourmet
SELECT tb_pizzas.*, tb_categorias.tipo AS categoria_tipo, tb_categorias.tempero AS categoria_tempero
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.id = 2;