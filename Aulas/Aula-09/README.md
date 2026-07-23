// Data: 20/04/2026
Jogo 1,N ----------- 2,2 Time
 
Jogo
idJogo, data, hora, timeCasa, timeVisitante
100, 12/04/2026, 14:00, 1, 2
101, 14/05/2026, 21:00, 2, 1
 
Time
1, Gremio
2, Inter
3, Novo Hamburgo
4, Lajeadense
 
============================
 
Filme 0,N ---------- 1,1 Categoria
 
Filme(idFilme, Titulo, idCategoria)
    idCategoria referencia Categoria
Categoria(idCategoria, Descricao)
 
 
Categoria
1, Ação
2, Ficção
3, Terror
4, Romance
 
Filme
100, Blade Runner, 2
101, Rambo, 1
102, IT, O Palhaço, 3
 
============================
 
Funcionario ----|
            ----|
 
Funcionario(idFuncionario, nome, dataNascimento, chefe)
    chefe referencia Funcionario
 
1, Alexandre, 08/09/1974, 2
2, Maria, 12/12/2004, NULL
 
============================
 
Disciplina(idDisciplina, nome, preRequisito)
    preRequisito referencia Disciplina
 
100, Algoritmos A, NULL
101, Algoritmos B, 100
 
============================
 
Departamento 1 --------------- N Empregado
 
Departamento(idDepartamento, nome)
 
Empregado(idEmpregado, nome, departamento)
    departamento referencia Empregado
 
Departamento
100, Logistica, 1
101, Financeiro
 
Empregado
1, Alexandre, 100
2, Yasmin, 101
3, Leonardo, 101
 
============================
 
Aluno N ------- N Disciplina
 
Aluno(idAluno, nome)
 
Disciplina(idDisciplina, titulo)
 
AlunoDisciplina( aluno, disciplina, ano, semestre, nota)
    aluno referencia Aluno
    disciplina referencia Disciplina
 
===============================
 
Pessoa(idPessoa, nome, tipo (FISICA ou JURIDICA), cpf, cnpj)
 
Pessoa
100, Alexandre, FISICA, 88888888, NULL
101, UFN, JURIDICA, NULL, 24234234234234
 
================================
 
Fornecedor N -------------- N Produto
 
Fornecedor(idFornecedor, nome)
 
Produto(idProduto, descricao)
 
Fornecedor_Produto(fornecedor, produto, preco_custo)
    fornecedor referencia Fornecedor
    produto referencia Produto
 
Fornecedor
1, Kaua
2, Joseph
3, Danie
 
Produto
100, parafuso10
101, parafuso11
102, porca10
 
FornecedorProduto
1, 100, 0,5
2, 100, 1,0
3, 100, 0,3
 
====================

Genero(id_genero, descricao)
 
Editora(id_editora, nome)
 
Autor(id_autor, nome)
 
Ranking(id_ranking, data_inicial, data_final)
 
Livro(id_livro, titulo, preco, genero, editora)
    genero referencia Genero
    editora referencia Editora
 
AutorLivro(idAutorLivro, autor, livro)
    autor referencia Autor
    livro referencia Livro
 
LivroRanking(livro, ranking, posicao, pos_sem_anterior, sem_consecutivas, quant_sem)
    livro referencia Livro
    ranking referencia Ranking


Filme 0,N ---------- 1,1 Categoria
 
Filme(idFilme, Titulo, idCategoria)
    idCategoria referencia Categoria
 
Categoria(idCategoria, Descricao)
 
Categoria
1, Ação
2, Ficção
3, Terror
4, Romance
 
Filme
100, Blade Runner, 2
101, Rambo, 1
102, IT, O Palhaço, 3

# SQL
 
# Mostra as categorias que não estão associadas a nenhum filme
select Categoria.descricao
from Filme, Categoria
where Categoria.idCategoria == Filme.idCategoria
 
# Mostra a categoria do filme Rambo
select Categoria.descricao
from Categoria, Filme
where
    Filme.titulo == "Rambo" and
    Filme.idCategoria == Categoria.idCategoria;
 
# Mostra todos os dados (colunas e linhas) da tabela Categoria
select *
from Categoria;
 
# Mostra o id da categoria Terror OU Ação
select idCategoria
from Categoria
where descricao == "Terror" or descricao == "Ação";
 
# Mostra os titulos dos filmes que tem categoria 2
select titulo
from Filme
where idCategoria == 2;
 
# Mostra os título dos filmes que tem categoria Ficção
select Filme.titulo
from Filme, Categoria
where
    Categoria.descricao == "Ficção and
    Filme.idCategoria == Categoria.idCategoria
