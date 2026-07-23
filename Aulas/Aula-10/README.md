// Data: 27/04/2026
# Aula 10 — Introdução ao MySQL

## Conteúdo

- comandos de navegação no MySQL;
- criação e remoção de esquemas;
- criação de tabelas;
- definição de chaves primárias e estrangeiras.

## Materiais

- [Exercício de consultas acadêmicas](Exercicios/Exercicio-01-Consultas-Academicas.md)
- [Script do banco acadêmico](Scripts/script-aluno.sql)
- [Diagrama ER](Diagramas/diagrama-er-academico.png)
- [Dados usados nas consultas](Diagramas/dados-consultas-academicas.png)

# Comandos para aprender
-- mostra os esquemas de banco de dados no MySQL

show databases;
 
-- para ativar um esquema ou um banco de dados

use mysql;
 
-- mostra as tabelas de um esquema ou banco de dados

show tables;
 
-- mostra todas as colunas/atributos e todas as linhas da tabela component

select *

from component;
 
-- cria e usa um esquema de banco de dados

create schema ufn_db;

use ufn_db;

show tables;
 
-- cria a tabela curso(id_curso, descricao)

CREATE TABLE curso (

    id_curso INT PRIMARY KEY not null,

    descricao VARCHAR(50) not null

);
 
select *

from curso;
 
-- cria a tabela aluno(id_aluno, nome, id_curso)

CREATE TABLE aluno (

    id_aluno INT PRIMARY KEY NOT NULL,

    nome VARCHAR(50) NOT NULL,

    id_curso INT,

    CONSTRAINT fk_curso FOREIGN KEY (id_curso) REFERENCES curso(id_curso)

);

-- aluno vai até curso pegar o id curso
 
select *

from aluno;



## Comandos para apagar tabelas e o esquema
drop table nome;
drop schema nome;
