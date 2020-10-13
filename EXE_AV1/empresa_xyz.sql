
CREATE DATABASE empresa_xyz;

/*
\c empresa_xyz; Conectar ao banco de dados no SQL SHELL
*/

CREATE TABLE departamentos(
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    localizacao VARCHAR(70) NOT NULL
);

INSERT INTO departamentos VALUES (501, 'Administração', 'Rio de Janeiro');
INSERT INTO departamentos VALUES (502, 'Financeiro', 'Ceará');
INSERT INTO departamentos VALUES (503, 'Compras', 'São Paulo');
INSERT INTO departamentos VALUES (504, 'Comercial', 'Orlando');
INSERT INTO departamentos VALUES (505, 'Contabilidade', 'Rio de Janeiro');

CREATE TABLE projetos(
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    localizacao VARCHAR(70) NOT NULL,
    data_inicio DATE NOT NULL,
    data_conclusao DATE,
    valor_orcamento INT,
    id_dep INT NOT NULL,
    FOREIGN KEY (id_dep) REFERENCES departamentos(id)
);

INSERT INTO projetos VALUES (201, 'Migração de sistema', 'São Paulo', '2020-09-10', '2020-10-10', 2000000, 505);
INSERT INTO projetos VALUES (202, 'Controle de máquinas', 'Rio de Janeiro', '2020-08-15', '2020-09-07', 1500000, 503);
INSERT INTO projetos VALUES (203, 'Movimentação de máquinas', 'Ceará', '2020-07-05', '2020-08-10', 30000000, 502);
INSERT INTO projetos VALUES (204, 'Implantação de backup', 'Rio de Janeiro', '2020-01-15', '2020-08-08', 1500, 504);
INSERT INTO projetos VALUES (205, 'Automatização de rede', 'Rio de Janeiro', '2020-03-15', '2020-03-25', 95100, 501);

CREATE TABLE funcionarios(
    matricula INT NOT NULL PRIMARY KEY,
    primeiro_nome VARCHAR(30) NOT NULL,
    ultimo_nome VARCHAR(30) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    endereco VARCHAR(80) NOT NULL,
    salario INT,
    sexo CHAR(1) CHECK (sexo = 'F' OR sexo = 'M'),
    email VARCHAR(30) NOT NULL UNIQUE,
    data_nasc DATE,
    id_dep INT NOT NULL,
    FOREIGN KEY (id_dep) REFERENCES departamentos(id)
);

INSERT INTO funcionarios VALUES (935, 'Carlos', 'Araujo', '176.659.597-92', 'Rua A', 1500, 'M', 'c.araujo@email.com', '2000-04-27', 505);
INSERT INTO funcionarios VALUES (974, 'Reginaldo', 'Junior', '192.159.675-26', 'Rua B', 2000, 'M', 'r.junior@email.com', '1995-09-12', 503);
INSERT INTO funcionarios VALUES (925, 'Lucas', 'Oliveira', '151.451.152-97', 'Rua C', 8300, 'M', 'l.oliveira@email.com', '1997-02-01', 502);
INSERT INTO funcionarios VALUES (997, 'Mariana', 'Pietra', '518.217.597-12', 'Rua E', 9400, 'F', 'm.pietra@email.com', '1999-01-02', 501);
INSERT INTO funcionarios VALUES (384, 'Lucas', 'Severiano', '123.523.358-42', 'Rua D', 3700, 'M', 'l.severiano@email.com', '2001-01-27', 504);

CREATE TABLE dependentes(
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    sexo CHAR(1) CHECK (sexo = 'F' OR sexo = 'M'),
    data_nasc DATE,
    id_func INT NOT NULL,
    FOREIGN KEY (id_func) REFERENCES funcionarios(matricula)
);

INSERT INTO dependentes VALUES (157, 'Mario', 'M', '2000-01-02', 935);
INSERT INTO dependentes VALUES (167, 'Marcia', 'F', '1978-03-05', 974);
INSERT INTO dependentes VALUES (123, 'Carla', 'F', '1999-05-03', 997);
INSERT INTO dependentes VALUES (174, 'Maria', 'F', '1989-09-01', 925);
INSERT INTO dependentes VALUES (194, 'Juliano', 'M', '2001-01-03', 384);