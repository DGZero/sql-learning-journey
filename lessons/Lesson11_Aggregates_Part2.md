# SQLBolt Lesson 11 - Queries with Aggregates (Part 2)

## 📚 Objective

Learn how to group rows using the `GROUP BY` clause and apply aggregate functions to summarize data by categories. This is one of the most important concepts in SQL for Data Analytics and Business Intelligence.

---

## 📖 Concepts Learned

### 📂 GROUP BY

The `GROUP BY` clause groups rows that share the same value into summary rows.

It is commonly used together with aggregate functions.

```sql
SELECT
    role,
    COUNT(*)
FROM employees
GROUP BY role;
```

---

### 🔢 GROUP BY with COUNT()

Count the number of records in each category.

```sql
SELECT
    role,
    COUNT(*) AS total_employees
FROM employees
GROUP BY role;
```

---

### ➕ GROUP BY with SUM()

Calculate totals for each group.

```sql
SELECT
    department,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department;
```

---

### 📊 GROUP BY with AVG()

Calculate averages for each category.

```sql
SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department;
```

---

### 🎯 Filtering Before Grouping

The `WHERE` clause filters rows **before** the grouping process.

```sql
SELECT
    role,
    SUM(years_employed) AS total_years
FROM employees
WHERE role = 'Engineer'
GROUP BY role;
```

---

## 📝 Exercises

### Exercise 1 - Number of Artists

Find the number of Artists in the studio.

```sql
SELECT
    role,
    COUNT(*) AS total_employees
FROM employees
WHERE role = 'Artist'
GROUP BY role;
```

---

### Exercise 2 - Employees by Role

Find the number of employees for each role.

```sql
SELECT
    role,
    COUNT(*) AS total_employees
FROM employees
GROUP BY role;
```

> **Note:** Using `SELECT *` with `GROUP BY` is generally not recommended in SQL because non-grouped columns are ambiguous. It is better to explicitly select the grouped column and the aggregate function.

---

### Exercise 3 - Total Years Employed by Engineers

Calculate the total number of years worked by Engineers.

```sql
SELECT
    role,
    SUM(years_employed) AS total_years
FROM employees
WHERE role = 'Engineer'
GROUP BY role;
```

---

## 💼 Real-world Applications

`GROUP BY` is widely used in:

- Sales reports by region
- Revenue by product
- Customer segmentation
- Employee statistics
- KPI dashboards
- Financial reports
- Business Intelligence
- Data Warehousing

---

## 🎯 Key Takeaways

- Learned how to group data using `GROUP BY`.
- Combined `GROUP BY` with aggregate functions.
- Used `COUNT()` to count records within groups.
- Used `SUM()` to calculate totals by category.
- Understood that `WHERE` filters rows before grouping.
- Reinforced the importance of selecting only grouped columns and aggregate functions.

---

## 💡 Interview Notes

Common interview questions related to this lesson:

- What is the purpose of `GROUP BY`?
- Why do we use aggregate functions with `GROUP BY`?
- Can you use `WHERE` together with `GROUP BY`?
- What happens if you select columns that are not grouped or aggregated?
- What is the execution order of `WHERE` and `GROUP BY`?

---

## 🚀 Next Lesson

**SQLBolt Lesson 12 – Order of Execution of a Query**

Topics to learn:

- SQL query execution order
- SELECT processing
- FROM
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- LIMIT
