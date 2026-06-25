# SQL Lesson 8 - A Short Note on NULLs

## Concepts Learned

In this lesson, I learned how SQL handles missing or unknown values using NULL.

### Key Concepts

- NULL values
- IS NULL
- IS NOT NULL
- Missing data
- Data quality checks

---

## What is NULL?

NULL represents a missing, unknown, or undefined value.

It is important to understand that NULL is not:

- Zero (0)
- An empty string ('')
- False

NULL means that no value exists.

---

## Finding Missing Values

### Using IS NULL

Returns rows where the value is missing.

```sql
SELECT *
FROM employees
WHERE manager IS NULL;
```

Example result:

| employee | manager |
|----------|----------|
| Carlos | NULL |

---

### Using IS NOT NULL

Returns rows where a value exists.

```sql
SELECT *
FROM employees
WHERE manager IS NOT NULL;
```

Example result:

| employee | manager |
|----------|----------|
| João | Carlos |
| Maria | Carlos |

---

## Common Mistake

Incorrect:

```sql
SELECT *
FROM employees
WHERE manager = NULL;
```

This query does not work because SQL requires special operators for NULL values.

Correct:

```sql
SELECT *
FROM employees
WHERE manager IS NULL;
```

---

## Example Scenario

### Employees Table

| employee | manager |
|----------|----------|
| João | Carlos |
| Maria | Carlos |
| Carlos | NULL |

Employees without a manager:

```sql
SELECT *
FROM employees
WHERE manager IS NULL;
```

Result:

| employee | manager |
|----------|----------|
| Carlos | NULL |

---

## Practical Applications in Data Analytics

- Finding incomplete records
- Detecting missing customer information
- Data quality validation
- Identifying records that need correction
- Preparing datasets for analysis

---

## My Explanation

NULL represents missing information.

When working with data, missing values are very common and can affect reports, dashboards, and analysis results.

To find missing values, SQL uses:

- IS NULL
- IS NOT NULL

Instead of:

- = NULL
- != NULL

Understanding NULL is essential for data cleaning and data quality analysis.

---

## Study Notes

The most important lesson was learning that NULL requires special operators.

I also learned that missing data can be valuable information and should be analyzed carefully before being removed or replaced.

---

## Status

✅ Completed

git commit -m "Complete SQLBolt Lesson 8 - NULL values"
