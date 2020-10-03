
/* Exibe todos os bancos de dados criados
\l
*/

-- Criar banco de dados novo
CREATE DATABASE aula06ni;


/* Conectar ao banco de dados
\c aula05ni;
*/

-- Criar tabela no banco de dados
CREATE TABLE curso(
    id int,
    nome varchar(50)
);

/* Exibe descrição da tabela e as colunas
\d curso;
*/

-- Inserir dados em uma tabela
INSERT INTO curso VALUES (
    100, 'Sistemas de informação'
);
