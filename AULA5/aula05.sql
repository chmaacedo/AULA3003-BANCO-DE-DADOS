
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
INSERT INTO curso VALUES ( 100, 'Sistemas de informação' );
INSERT INTO curso VALUES ( 200, 'Análise de sistemas' );
INSERT INTO curso VALUES ( 300, 'Administração' );
INSERT INTO curso VALUES ( 400, 'Direito' );
INSERT INTO curso VALUES ( 500, 'Engenharia de software' );


--DDL
--Consultar dados em uma tabela
SELECT * FROM curso;

-- Atualiza todos os dados da tabela
UPDATE curso SET id = 100, nome = 'Medicina';

-- Deleta todos os dados da tabela curso
DELETE FROM curso;