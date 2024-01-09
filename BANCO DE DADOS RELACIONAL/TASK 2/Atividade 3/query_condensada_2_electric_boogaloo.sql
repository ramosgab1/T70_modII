-- Criando o banco de dados!
CREATE DATABASE db_farmacia_bem_estar;

-- Usar o banco de dados ali de cima. 
USE db_farmacia_bem_estar;

-- Criando as tabelas. 
CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT
);

CREATE TABLE IF NOT EXISTS tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserindo um monte de coisinha (primeiro em categoria, depois em produto). Sempre fazer categoria primeiro ou dá 
-- meio ruim sei lá. 
INSERT INTO tb_categorias (nome, descricao)
VALUES ('Medicamentos', 'Produtos relacionados à saúde e tratamento de doenças.'),
       ('Higiene Pessoal', 'Produtos para cuidados pessoais e higiene.'),
       ('Dermocosméticos', 'Produtos para cuidados da pele com propriedades dermatológicas.'),
       ('Perfumaria', 'Produtos de perfumaria e fragrâncias.'),
       ('Bem-Estar', 'Produtos relacionados ao bem-estar e qualidade de vida.');
       
INSERT INTO tb_produtos (nome, descricao, preco, categoria_id)
VALUES ('Paracetamol', 'Analgésico e antitérmico', 10.00, 1),
       ('Shampoo Anticaspa', 'Shampoo para combate à caspa', 15.00, 2),
       ('Protetor Solar FPS 50', 'Protetor solar com fator de proteção 50', 25.00, 3),
       ('Perfume Floral', 'Perfume com fragrância floral', 50.00, 4),
       ('Vitamina C', 'Suplemento vitamínico', 30.00, 5),
       ('Creme Hidratante Facial', 'Creme hidratante para o rosto', 20.00, 3),
       ('Desodorante Roll-On', 'Desodorante antitranspirante em roll-on', 12.00, 2),
       ('Sais de Banho Relaxantes', 'Sais de banho com propriedades relaxantes', 18.00, 5);
       
-- Consultas de preço 
SELECT * FROM tb_produtos WHERE preco > 50.00; -- Maior que 50 reais, não habemos, somos baratas. 
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00; -- Aqui habemos. 

-- Consultando por letra agora
SELECT * FROM tb_produtos WHERE nome LIKE '%C%'; -- Se aparecer vitamina c suave. 

-- Juntas e shallow now (seleciona a categoria, o * quer dizer todos, os as são pra dar apelido, from é de onde 
-- estamos tirando, inner join é inner join né mores, on é relacionando as gatas). 
SELECT *, tb_categorias.nome AS categoria_nome, tb_categorias.descricao AS categoria_descricao
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id; -- DEU CERTO SENHOOOOR! 

-- Queremos todos os dermocosméticos agora. 
SELECT *, tb_categorias.nome AS categoria_nome, tb_categorias.descricao AS categoria_descricao
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.id = 3; -- 3 é o ID de dermocosméticos lá em cima. 