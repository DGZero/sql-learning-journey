# SQLBolt Lesson 12 - Order of Execution of a Query

## 📚 Objective

Learn how SQL executes a query internally and understand the logical order of operations. This helps write better queries, debug problems, and understand how clauses like `WHERE`, `GROUP BY`, and `ORDER BY` work together.

---

## 📖 Concepts Learned

### 🔄 SQL Query Execution Order

SQL does not execute queries in the same order that we write them.

Although `SELECT` appears first in a query, SQL follows this execution order:

```sql
FROM
WHERE
GROUP BY
HAVING
SELECT
ORDER BY
LIMIT
```

Example:

```sql
SELECT
    role,
    COUNT(*) AS total_employees
FROM employees
WHERE years_employed > 5
GROUP BY role
HAVING COUNT(*) > 2
ORDER BY total_employees DESC
LIMIT 5;
```

Execution process:

1. `FROM` → Selects the table
2. `WHERE` → Filters rows
3. `GROUP BY` → Groups records
4. `HAVING` → Filters groups
5. `SELECT` → Defines the final columns
6. `ORDER BY` → Sorts the results
7. `LIMIT` → Restricts returned rows

---

### 📂 FROM

The `FROM` clause defines the source table used in the query.

```sql
SELECT *
FROM employees;
```

The database first identifies where the data comes from before applying filters.

---

### 🔍 WHERE

The `WHERE` clause filters individual rows before grouping and aggregation.

```sql
SELECT
    name,
    role
FROM employees
WHERE role = 'Engineer';
```

`WHERE` works before aggregate functions.

Example:

```sql
SELECT
    role,
    COUNT(*) AS total_employees
FROM employees
WHERE role = 'Engineer'
GROUP BY role;
```

---

### 📊 GROUP BY

The `GROUP BY` clause groups rows that have the same value.

```sql
SELECT
    role,
    COUNT(*) AS total_employees
FROM employees
GROUP BY role;
```

Grouping happens after the `WHERE` filter is applied.

---

### 🎯 HAVING

The `HAVING` clause filters groups after aggregate functions are calculated.

```sql
SELECT
    role,
    COUNT(*) AS total_employees
FROM employees
GROUP BY role
HAVING COUNT(*) > 5;
```

Difference:

- `WHERE` → Filters rows before grouping.
- `HAVING` → Filters groups after aggregation.

---

### 📝 SELECT

The `SELECT` clause defines which columns and calculations appear in the final result.

```sql
SELECT
    role,
    COUNT(*) AS total_employees
FROM employees
GROUP BY role;
```

Even though it appears first, `SELECT` is processed after filtering and grouping.

---

### 📈 ORDER BY

The `ORDER BY` clause sorts the final query result.

```sql
SELECT
    name,
    salary
FROM employees
ORDER BY salary DESC;
```

Sorting options:

```sql
ASC  -- Ascending order
DESC -- Descending order
```

---

### 🔢 LIMIT

The `LIMIT` clause controls how many rows are returned.

```sql
SELECT *
FROM employees
LIMIT 10;
```

Useful for:

- Testing queries
- Previewing data
- Pagination
- Reducing large results

---

## 📝 Exercises

### Exercise 1 - 

Find the number of movies each director has directed

```sql
SELECT
  Director,
  COUNT(*) AS Total_Direction
FROM movies
GROUP BY Director;
```

---

### Exercise 2 - Find the total domestic and international sales that can be attributed to each director

```sql
SELECT Director, SUM (domestic_sales + international_sales) AS Total_Sales  FROM movies
INNER JOIN boxoffice 
    ON Movies.Id = boxoffice.Movie_id
GROUP BY Director;
```

---

## 💼 Real-world Applications

Understanding SQL execution order is useful in:

- Query optimization
- Debugging SQL errors
- Data Analytics
- Business Intelligence
- Dashboard creation
- Reporting systems
- Data engineering
- Database performance improvement

---

## 🎯 Key Takeaways

- Learned the logical execution order of SQL queries.
- Understood why SQL does not execute starting from `SELECT`.
- Learned the difference between `WHERE` and `HAVING`.
- Understood when filtering happens before and after aggregation.
- Learned how `ORDER BY` and `LIMIT` affect query results.
- Improved the ability to read and debug complex SQL queries.

---

## 💡 Interview Notes

Common interview questions related to this lesson:

- What is the execution order of a SQL query?
- Why is `WHERE` executed before `GROUP BY`?
- Why can't aggregate functions be used inside `WHERE`?
- What is the difference between `WHERE` and `HAVING`?
- When is `ORDER BY` executed?
- Why does SQL process `FROM` before `SELECT`?

---

## 🚀 Next Lesson

**SQLBolt Lesson 13 – Inserting Rows**

Topics to learn:

- INSERT INTO statement
- Adding new records
- Specifying columns
- Inserting multiple rows
- Modifying database data
