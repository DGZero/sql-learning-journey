# SQLBolt Lesson 10 - Queries with Aggregates (Part 1)

## 📚 Objective

Learn how to summarize data using SQL aggregate functions. Aggregate functions are essential for data analysis because they allow you to calculate totals, averages, minimums, maximums, and record counts.

---

## 📖 Concepts Learned

### 🔢 Aggregate Functions

Aggregate functions perform calculations across multiple rows and return a single value.

Common aggregate functions include:

- `COUNT()` → Counts rows
- `SUM()` → Calculates the total
- `AVG()` → Calculates the average
- `MIN()` → Returns the smallest value
- `MAX()` → Returns the largest value

---

### 🔹 COUNT()

Counts the number of records.

```sql
SELECT COUNT(*)
FROM employees;
```

You can also count non-null values in a specific column.

```sql
SELECT COUNT(email)
FROM employees;
```

---

### 🔹 SUM()

Calculates the total value of a numeric column.

```sql
SELECT SUM(salary)
FROM employees;
```

---

### 🔹 AVG()

Calculates the average value.

```sql
SELECT AVG(salary)
FROM employees;
```

---

### 🔹 MIN() and MAX()

Retrieve the lowest and highest values in a column.

```sql
SELECT
    MIN(salary),
    MAX(salary)
FROM employees;
```

---

## 📝 Exercises

### Exercise 1

1 - Find the longest time that an employee has been at the studio ✓

SELECT Name, MAX(years_employed) FROM employees;


### Exercise 2

2 - For each role, find the average number of years employed by employees in that role ✓

SELECT ROLE, AVG(years_employed) AS AVG FROM employees
GROUP BY ROLE;
---

### Exercise 3

3 - Find the total number of employee years worked in each building ✓

SELECT Building, SUM(years_employed) AS AVG FROM employees
GROUP BY Building;

---


---

## 💼 Real-world Applications

Aggregate functions are used daily in Data Analytics and Data Engineering for:

- KPI calculations
- Executive dashboards
- Financial reports
- Sales analysis
- Customer analytics
- Operational monitoring
- Data Quality checks
- Business Intelligence (Power BI, Tableau)

---

## 🎯 Key Takeaways

- Learned how aggregate functions summarize data.
- Used `COUNT()` to count records.
- Used `SUM()` to calculate totals.
- Used `AVG()` to calculate averages.
- Used `MIN()` and `MAX()` to find extreme values.
- Understood the difference between row-level queries and aggregated results.

---

## 💡 Interview Notes

Common interview questions related to this lesson:

- What is the difference between `COUNT(*)` and `COUNT(column)`?
- When would you use `AVG()` instead of `SUM()`?
- What happens if NULL values exist when using aggregate functions?
- Which aggregate functions ignore NULL values?

---

## 🚀 Next Lesson

**SQLBolt Lesson 11 – Queries with Aggregates (Part 2)**

Topics to learn:

- GROUP BY
- HAVING
- Aggregations by category
- Filtering aggregated results
