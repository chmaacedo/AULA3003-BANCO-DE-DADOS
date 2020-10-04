/*
Construir as tabelas abaixo dentro de um banco de dados chamado "exercicios_aula05"
baseando-se nas informaçõeas a seguir:
1-Um site precisa armazenar os dados de seus visitantes para isso é necessário 
saber: nome, email, sexo e endereço de cada um deles.

2-(DESAFIO)Uma empresa requer armazenar os dados de seus clientes, esses clientes
são proprietarios de bens, cujo o armazenamento das informações tambem sao requeridos.
Dados dos proprietario: nome, email, sexo e endereço. Dados dos bens: nome, 
tipo(movel ou imovel) e valor.  Cada proprietario pode nao ter bens ou ter vários bens,
ja um bem, obrigatoriamente dese ser de um, e somente um proprietario.

3-Insira 5 registros diferentes em cada uma das tabelas.
*/

-- CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE exercicios_aula05;

/* CRIAÇÃO DA TABELA VISITANTE/ PRIMARY KEY = CHAVE PRIMARIA, NOT NULL = CAMPO OBRIGATÓRIO
UNIQUE = VALORES UNICOS, RESTRIÇÃO = CONSTRAINT, CHECK ACEITA APENAS AS VARIAVEL DESCRITA*/
CREATE TABLE proprietario(
    id INT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE,
    endereco VARCHAR(70) NOT NULL,
    sexo CHAR(1) CHECK (sexo = 'M' OR sexo = 'F') NOT NULL
);

/* EXIBE DESCRIÇÃO DAS TABELAS
\d visitante;
*/

-- INSERINDO DADOS NA TABELA PROPRIETARIO
INSERT INTO proprietario VALUES(100,'Pedro','pedro@gmail.com','Rua ABC', 'M');
INSERT INTO proprietario VALUES(101,'Yuri','yuri@gmail.com','Rua DEF', 'M');
INSERT INTO proprietario VALUES(102,'Junior','junior@gmail.com','Rua GHI', 'M');
INSERT INTO proprietario VALUES(103,'Rayane','rayane@gmail.com','Rua SAC', 'F');
INSERT INTO proprietario VALUES(104,'Sarah','sarah@gmail.com','Rua CQT', 'F');


CREATE TABLE cliente(
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(30),
    sexo VARCHAR(15),
    endereco VARCHAR(40)
);


CREATE TABLE bens(
    id_cliente INT,
    nome VARCHAR(50),
    tipo VARCHAR(10),
    valor INT
);




INSERT INTO cliente VALUES('Sara','sara@email.com','Feminino','Rua ACD','Carro');