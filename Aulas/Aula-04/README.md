// Data: 16/03/2026
# Modelagem - Desenho de Banco de dados
    - conceitual: nível abstratro com entidades, atributos, relacionametos e cardinalidades
    - Interação com cliente
    - Geração de documentação
  - Lógico: Nível de programação, foco nas chaves estrangeiras
  - Físico: nível de SGBD e tecnologia
- Conceitos
  - BD vs SGBD: estrutura de armazenamento vs conjunto de serviços para o BD
    - serviços de SGBD:
      - garantir integridade do Banco
      - garantir transações
      - garantir backup
  - Sistema Computacional
    - Sistema de Informação: Foco em relatórios
    - Sistema de conhecimento: foco no reconhecimento de padrões
      - Armazenar mais atributos
      - Evitar dados NULOS (Opcionais)
  - Partes ou Elementos de um Sistema
    - Parte ou aspectos estruturais
      - BD
    - Parte ou aspectos Funcionais
      - Funcionalidades ou finalidades do sistema (Começo)
    - Estudo de cardinalidades
      - 1 para N: Chave estrangeira vai para a tabela/entidade do N
      - N para N: Cria - se uma terceira tabela e as chaves estrangeiras vão para lá
      - 1 para 1: Chave estrangeira vai ou visita qualquer tabela

Toda chave estrangeira, na origem é chave primária
