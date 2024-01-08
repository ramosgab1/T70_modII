USE db_registroescola; 

CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(255) NOT NULL, 
idade INT NOT NULL, 
serie VARCHAR(2) NOT NULL, 
turma VARCHAR(1) NOT NULL,
endereco VARCHAR(255) NOT NULL, 
nota DECIMAL(2,2), 
PRIMARY KEY (id)
); 