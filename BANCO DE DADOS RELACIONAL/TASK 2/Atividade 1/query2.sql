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

DROP TABLE tb_personagens; 
