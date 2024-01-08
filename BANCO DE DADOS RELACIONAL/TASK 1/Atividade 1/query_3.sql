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