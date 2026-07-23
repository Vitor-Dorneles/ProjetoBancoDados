# Resposta

```text
Categoria(codCategoria, descricao, ativo). 
    codCategoria chave primaria

Ator(codAtor, apelido, nome, dataNascimento, ativo).
    codAtor chave primária

Filme(codFilme, titulo, codCategoria, codAtor, ativo). 
    codFilme chave primária
    codAtor referencia Ator

Cliente(codCliente, prenome, sobrenome, telefone, endereco, ativo).
    codCliente chave primaria

Aluguel(codFilme, codCliente, data, hota).
    codFilme, codCliente, data e hora formam chave primária
    codFilme referencia Filme
    codCliente referencia Cliente
```
