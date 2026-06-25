# SQL Lesson 6 - JOINs

## Conceitos aprendidos

- INNER JOIN
- LEFT JOIN
- Relacionamento entre tabelas
- Chaves primárias e estrangeiras

## Exemplo

SELECT *
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id;

## Minha explicação

INNER JOIN retorna apenas registros que existem nas duas tabelas.

LEFT JOIN retorna todos os registros da tabela da esquerda, mesmo sem correspondência.
