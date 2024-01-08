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