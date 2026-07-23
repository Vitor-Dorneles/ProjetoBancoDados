# Resposta original — Prova 02

// Data: 25/05/2026
Perguntas:
1. Qual o papel do SQL em banco de dados relacionais?
É uma linguagem estruturada que nos possibilita estruturar e administar o banco de dados
2. Qual a diferença entre comandos DML e DDL?
Ambos são familias de comandos do SQL, DDL são consultas, inserções, updates e deletes enquanto DML são comandos da estrutura do banco, regras que determinam como o banco será modelado.
 
== Selects ==

1. Liste todos os autores que escrevem livros do gênero Infantil.
select distinct (Autor.nome) , genero.descricao
from Autor,Genero, Livro
	where Genero.descricao ="Infantil";
nome    descricao 
Lucas	Infantil
Francisco	Infantil
Maria	Infantil
Ana	Infantil
Felipe	Infantil
Marcos	Infantil
Pedro	Infantil

2. Liste  todos  os  livros  do  gênero Ficção, seus respectivos autores e suas respectivas editoras 
(nomes de editoras).

select autor.nome,livro.titulo, genero.descricao as Tipo, genero.idGenero, editora.nome as Editora
from Autor,Genero, Livro, Editora
	where livro.idGenero = Genero.idGenero AND Genero.descricao ="Ficção" AND Livro.idEditora = Editora.idEditora;

Pedro	I	Ficção	2	Makron Books
Pedro	C	Ficção	2	Scipione
Marcos	I	Ficção	2	Makron Books
Marcos	C	Ficção	2	Scipione
Felipe	I	Ficção	2	Makron Books
Felipe	C	Ficção	2	Scipione
Ana	I	Ficção	2	Makron Books
Ana	C	Ficção	2	Scipione
Maria	I	Ficção	2	Makron Books
Maria	C	Ficção	2	Scipione
Francisco	I	Ficção	2	Makron Books
Francisco	C	Ficção	2	Scipione
Lucas	I	Ficção	2	Makron Books
Lucas	C	Ficção	2	Scipione

3. Liste quantos livros o autor Pedro já publicou
select nome as autor, count(*) as totalDeLivros
from Autor, livro
where autor.nome = "Pedro";

Pedro	12

4. Mostre as editoras que publicam livros do gênero Negócio.
SELECT Livro.titulo, Editora.nome "Editora", Genero.descricao "Genero" 
FROM Livro, Editora, Genero 
WHERE Livro.idGenero = Genero.idGenero AND 
Livro.idEditora = Editora.idEditora AND Genero.descricao = "Negócios";

E	Ática	Negócios
G	Makron Books	Negócios
H	Sagra Luzato	Negócios

5. Liste os autores que publicaram pela editora Sagra-Luzato.
select * from Autor, Editora
where idEditora = '5'

1	Pedro	5	Sagra Luzato
2	Marcos	5	Sagra Luzato
3	Felipe	5	Sagra Luzato
4	Ana	5	Sagra Luzato
5	Maria	5	Sagra Luzato
6	Francisco	5	Sagra Luzato
7	Lucas	5	Sagra Luzato
