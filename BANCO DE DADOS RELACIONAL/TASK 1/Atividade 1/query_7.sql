CREATE DATABASE db_recursosHumanos; 

USE db_recursoshumanos; 
CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(255) NOT NULL,
idade INT NOT NULL,
cargo VARCHAR(255) NOT NULL, 
salario DECIMAL(6,2) NOT NULL,
anosDeExperiencia INT, 
primary key (id)
);   

INSERT INTO tb_colaboradores(nome, idade, cargo, salario, anosDeExperiencia)
VALUES ("Ana Beatriz Gomes", 23, "Designer Gráfica", 2536.00, 2);
INSERT INTO tb_colaboradores(nome, idade, cargo, salario, anosDeExperiencia)
VALUES ("Gabrielle Ramos", 25, "Dev Java FullStack Jr", 3042.00, 1);
INSERT INTO tb_colaboradores(nome, idade, cargo, salario, anosDeExperiencia)
VALUES ("Cleyson Gama", 24, "Analista de Segurança da Informação", 5000.00, 3);
INSERT INTO tb_colaboradores(nome, idade, cargo, salario, anosDeExperiencia)
VALUES ("Igor Marques", 28, "Especialista em Redes", 4167.00, 2);
INSERT INTO tb_colaboradores(nome, idade, cargo, salario, anosDeExperiencia)
VALUES ("Maria Vitória Gama", 23, "Arquiteta de Soluções", 7500.00, 4);

UPDATE tb_colaboradores SET salario = 1500.00 WHERE id = 1;
-- precisa de um menor que 2000.00 aaaaaa

SELECT * FROM tb_colaboradores; 

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 2000.00 WHERE id = 1;

SELECT * FROM tb_colaboradores; 