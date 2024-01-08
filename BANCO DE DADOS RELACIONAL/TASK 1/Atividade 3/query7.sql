CREATE DATABASE db_registroescola; 

USE db_registroescola; 

CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(255) NOT NULL, 
idade INT NOT NULL, 
serie VARCHAR(2) NOT NULL, 
turma VARCHAR(1) NOT NULL,
endereco VARCHAR(255) NOT NULL, 
nota DECIMAL(6,2), 
PRIMARY KEY (id)
); 

-- DROP TABLE tb_alunos; 

INSERT INTO tb_alunos(nome, idade, serie, turma, endereco, nota)
VALUES ("João", 12, "7º", "A", "Rua das Flores", 6.00); 
INSERT INTO tb_alunos(nome, idade, serie, turma, endereco, nota)
VALUES ("Maria", 13, "8º", "B", "Av. dos Sonhos", "8.00"); 
INSERT INTO tb_alunos(nome, idade, serie, turma, endereco, nota)
VALUES ("Pedro", 11, "6º", "C", "Rua das Árvores", "10.00"); 
INSERT INTO tb_alunos(nome, idade, serie, turma, endereco, nota)
VALUES ("Ana", 14, "9º", "A", "Av. das Estrelas", "7.00"); 
INSERT INTO tb_alunos(nome, idade, serie, turma, endereco, nota)
VALUES ("Luiz", 15, "1º", "B", "Rua das Constelações", "5.50"); 
INSERT INTO tb_alunos(nome, idade, serie, turma, endereco, nota)
VALUES ("Sofia", 10, "5º", "C", "Rua dos Girassóis", "9.25"); 
INSERT INTO tb_alunos(nome, idade, serie, turma, endereco, nota)
VALUES ("Carlos", 12, "7º", "A", "Rua das Acácias", "3.00"); 
INSERT INTO tb_alunos(nome, idade, serie, turma, endereco, nota)
VALUES ("Henrique", 10, "5º", "C", "Rua dos Carneiros", "5.75"); 

-- SELECT * FROM tb_alunos; 

SELECT * FROM tb_alunos WHERE nota > 7.00;

SELECT * FROM tb_alunos WHERE nota < 7.00;

UPDATE tb_alunos SET nota = 10.0 WHERE id = 8; 

SELECT * FROM tb_alunos; 