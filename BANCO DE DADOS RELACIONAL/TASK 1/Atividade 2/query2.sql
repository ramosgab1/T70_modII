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