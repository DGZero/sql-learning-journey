# SQLBolt Lesson 9 - Queries with Expressions

## 📚 Objetivo

Aprender a utilizar expressões matemáticas em consultas SQL para criar novas colunas e transformar dados durante a consulta.

---

## 📖 Conceitos aprendidos

### ➕ Operadores matemáticos

Podemos realizar cálculos diretamente no SELECT.

Exemplos:

```sql
SELECT
    price * quantity AS total
FROM sales;
```

Operadores disponíveis:

- `+` Soma
- `-` Subtração
- `*` Multiplicação
- `/` Divisão

---

### 🏷️ Alias (AS)

Podemos dar um nome para o resultado de uma expressão.

```sql
SELECT
    salary * 12 AS annual_salary
FROM employees;
```

---

### 💰 Conversão de unidades

É comum precisar converter valores.

Exemplo:

Converter dólares para milhões de dólares.

```sql
SELECT
    title,
    (domestic_sales + international_sales) / 1000000.0 AS combined_sales
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id;
```

---

### 📈 Conversão para porcentagem

Antes de calcular porcentagens, é importante verificar como o dado está armazenado.

Exemplo:

Se o banco armazena:

```
8.2
```

Isso representa:

```
82%
```

Logo:

```sql
SELECT
    title,
    rating * 10 AS rating_percent
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id;
```

---

## 💡 Aprendizados importantes

Nem sempre a fórmula matemática está errada.

Primeiro é preciso entender a unidade utilizada pelo banco de dados.

Exemplos:

| Valor armazenado | Para exibir em % |
|------------------|------------------|
| 0.82 | ×100 |
| 8.2 | ×10 |
| 82 | Não converter |

---

## 📝 Exercícios realizados

### Exercício 1

Listar filmes com vendas combinadas em milhões.

```sql
SELECT
    title,
    (domestic_sales + international_sales) / 1000000.0 AS combined_sales
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id
ORDER BY combined_sales DESC;
```

---

### Exercício 2

Exibir rating em porcentagem.

```sql
SELECT
    title,
    rating * 10 AS rating_percent
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id;
```

---

### Exercício 3

Listar filmes lançados em anos pares.

```sql
SELECT
    title,
    year
FROM movies
WHERE year % 2 = 0;
```

---

## 🎯 O que aprendi nesta aula

- Criar expressões matemáticas em SQL
- Utilizar operadores (+, -, *, /)
- Criar aliases com AS
- Converter unidades de medida
- Converter notas em porcentagem
- Utilizar o operador módulo (%) para identificar números pares
- Interpretar corretamente os requisitos do problema antes de escrever a consulta

---

## 🚀 Próximo passo

➡️ SQL Lesson 10 - Queries with Aggregates (Part 1)

Nesta aula começarei funções de agregação:

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
