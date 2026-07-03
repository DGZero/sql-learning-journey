# SQLBolt Lesson 15 - Deleting Rows

## 📚 Objective

Learn how to remove records from a database using the `DELETE` statement. Deleting data is one of the four fundamental CRUD operations and should always be performed carefully to avoid accidental data loss.

---

## 📖 Concepts Learned

### 🗑️ DELETE

The `DELETE` statement removes one or more rows from a table.

```sql
DELETE FROM movies
WHERE id = 15;
```

---

### 🔍 WHERE

The `WHERE` clause specifies which rows should be deleted.

```sql
DELETE FROM employees
WHERE role = 'Intern';
```

Only employees with the role **Intern** will be removed.

---

### ⚠️ DELETE Without WHERE

If you omit the `WHERE` clause, **every row in the table will be deleted**.

```sql
DELETE FROM employees;
```

This removes all records but keeps the table structure intact.

---

### 🛡️ Best Practices

Before deleting data, verify the affected rows with a `SELECT`.

```sql
SELECT *
FROM employees
WHERE id = 5;
```

Then execute:

```sql
DELETE FROM employees
WHERE id = 5;
```

This helps prevent accidental deletions.

---

## 📝 Exercises

### Exercise 1 - Delete a Specific Movie

Remove a movie by its ID.

```sql
DELETE FROM movies
WHERE id = 15;
```

---

### Exercise 2 - Delete by Condition

Remove all employees with a specific role.

```sql
DELETE FROM employees
WHERE role = 'Intern';
```

---

### Exercise 3 - Delete All Rows

Delete every record from a table.

```sql
DELETE FROM employees;
```

> **Warning:** This deletes all rows while preserving the table structure.

---

## 💼 Real-world Applications

`DELETE` is commonly used to:

- Remove duplicate records
- Delete test or temporary data
- Clean obsolete information
- Remove inactive users
- Delete canceled orders
- Perform data maintenance
- Support ETL cleanup processes
- Comply with data retention policies

---

## 🎯 Key Takeaways

- Learned how to remove records using `DELETE`.
- Used the `WHERE` clause to delete specific rows.
- Understood the risk of deleting all records without `WHERE`.
- Learned to verify affected rows with a `SELECT` before deleting.
- Reinforced safe data manipulation practices.

---

## 💡 Interview Notes

Common interview questions related to this lesson:

- What is the difference between `DELETE` and `DROP`?
- What happens if you execute `DELETE` without a `WHERE` clause?
- Why should you run a `SELECT` before a `DELETE`?
- Does `DELETE` remove the table structure?
- When would you use `DELETE` instead of `TRUNCATE`?

---

## 🚀 Next Lesson

**SQLBolt Lesson 16 – Creating Tables**

Topics to learn:

- CREATE TABLE
- Defining columns
- Data types
- PRIMARY KEY
- Table structure
