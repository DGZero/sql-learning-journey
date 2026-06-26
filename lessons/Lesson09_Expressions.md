# SQLBolt Lesson 9 - Queries with Expressions

## 📚 Objective

Learn how to use SQL expressions to perform calculations, transform data, and create custom output columns directly within a query.

---

## 📖 Concepts Learned

### ➕ SQL Expressions

SQL allows arithmetic operations inside the `SELECT` statement.

Supported operators:

- `+` Addition
- `-` Subtraction
- `*` Multiplication
- `/` Division
- `%` Modulo (remainder)

Example:

```sql
SELECT
    price * quantity AS total_price
FROM sales;
```

---

### 🏷️ Column Aliases

Aliases make query results easier to understand.

```sql
SELECT
    salary * 12 AS annual_salary
FROM employees;
```

---

### 💰 Unit Conversion

Sometimes database values need to be converted into more meaningful units.

Example: Convert dollars into millions of dollars.

```sql
SELECT
    title,
    (domestic_sales + international_sales) / 1000000.0 AS combined_sales
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id;
```

---

### 📈 Percentage Conversion

Always verify how values are stored before converting them.

If ratings are stored from **0 to 10**, convert them into percentages by multiplying by **10**.

```sql
SELECT
    title,
    rating * 10 AS rating_percent
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id;
```

---

## 📝 Exercises

### Exercise 1 - Combined Movie Sales

Calculate total movie sales in millions of dollars.

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

### Exercise 2 - Ratings in Percentage

Convert movie ratings into percentages.

```sql
SELECT
    title,
    rating * 10 AS rating_percent
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id;
```

---

### Exercise 3 - Movies Released in Even Years

Return movies released in even-numbered years.

```sql
SELECT
    title,
    year
FROM movies
WHERE year % 2 = 0;
```

---

## 🎯 Key Takeaways

- Performed arithmetic operations in SQL queries.
- Created calculated columns using expressions.
- Used aliases (`AS`) for better readability.
- Converted values into different units.
- Converted ratings into percentages.
- Used the modulo operator (`%`) to identify even numbers.
- Learned the importance of understanding how data is stored before performing calculations.

---

## 🚀 Next Lesson

**SQL Lesson 10 – Queries with Aggregates (Part 1)**

Topics to learn:

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
