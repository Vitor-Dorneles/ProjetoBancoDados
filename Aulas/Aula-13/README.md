// Data: 18/05/2026
# Banco de Dados
- Relacional
  
- Não - Relacional
  - X
  - Meta
  - ...

# SQL - Structured Query Language
- DML
- DDL
  - select --> Consulta, Visão , Consulta
  - insert  } CRUD
  - update
  - delete

SELECT -- Seleciona
FROM -- de

WHERE -- Onde
ORDER BY -- ordenar

GROUP BY -- Agrupar por
Having -- Onde houver


# Selects 
 - Mais importante
    '''SELECT  Empregado.nome,  Empregado.Departamento_idDepartamento
    FROM  Empregado
    WHERE  Empregado.Departamento_idDepartamento  IN  (3,5);
    '''

''' MySql
Funções Agregadas (ou de Agrupamento)
função        retorno
avg(n)        média do valor n, ignorando nulos
count(expr)   vezes que o número da expr avalia para algo nao nulo
max(expr)     maior valor da expr
min(expr)     menor valor da expr
sum(n)	       soma dos valores de n, ignorando nulos

SELECT  AVG(Empregado.comissao)  FROM  Empregado;
SELECT  MIN(Empregado.comissao)  FROM  Empregado;
SELECT  MAX(Empregado.comissao)  FROM Empregado;
SELECT  SUM(Empregado.comissao) FROM  Empregado;
'''

- O caso do NULL
tem que ser muito bem observado, caso vá aplicar
envolve muito mais regras do negócio envolvido na área
