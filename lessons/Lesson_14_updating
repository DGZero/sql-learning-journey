# SQLBolt Lesson 14 - Updating Rows

## 📚 Objective

Learn how to modify existing records in a database using the `UPDATE` statement. Updating data is a fundamental SQL operation and one of the four CRUD actions (Create, Read, Update, Delete).

---

## 📖 Concepts Learned

### ✏️ UPDATE

The `UPDATE` statement modifies existing data in a table.

```sql
UPDATE movies
SET director = 'John Lasseter'
WHERE id = 2;
```

---

### 🎯 SET

The `SET` clause specifies which column(s) should be updated and their new values.

```sql
UPDATE employees
SET salary = 6000;
```

You can update multiple columns in a single query.

```sql
UPDATE employees
SET
    salary = 6000,
    role = 'Senior Engineer';
```

---

### 🔍 WHERE

The `WHERE` clause determines which rows will be updated.

```sql
UPDATE employees
SET salary = 6000
WHERE name = 'Maria';
```

Without a `WHERE` clause, **every row in the table will be updated**.

```sql
UPDATE employees
SET salary = 6000;
```

⚠️ This updates every employee's salary.

---

### 🛡️ Best Practices

Always verify your `WHERE` condition before executing an `UPDATE`.

A common workflow is:

```sql
SELECT *
FROM employees
WHERE name = 'Maria';
```

Then execute:

```sql
UPDATE employees
SET salary = 6000
WHERE name = 'Maria';
```

---

## 📝 Exercises

### Exercise 1 - Update a Movie

Update a movie's director.

```sql
UPDATE movies
SET director = 'John Lasseter'
WHERE id = 2;
```

---

### Exercise 2 - Update Multiple Columns

Modify more than one column in the same row.

```sql
UPDATE movies
SET
    year = 1999,
    length_minutes = 95
WHERE id = 1;
```

---

### Exercise 3 - Update a Specific Record

Update only the selected movie.

```sql
UPDATE movies
SET title = 'Toy Story 2'
WHERE id = 2;
```

---

## 💼 Real-world Applications

`UPDATE` is commonly used to:

- Correct incorrect data
- Update customer information
- Modify employee salaries
- Change product prices
- Update order status
- Fix data quality issues
- Perform ETL transformations
- Maintain master data

---

## 🎯 Key Takeaways

- Learned how to modify existing records using `UPDATE`.
- Used the `SET` clause to change column values.
- Understood the importance of the `WHERE` clause.
- Learned how to update multiple columns in one query.
- Understood the risks of updating every row accidentally.

---

## 💡 Interview Notes

Common interview questions related to this lesson:

- What is the purpose of the `UPDATE` statement?
- What happens if you omit the `WHERE` clause?
- Can you update multiple columns in a single query?
- Why is it good practice to run a `SELECT` before an `UPDATE`?
- How can you safely update production data?

---

## 🚀 Next Lesson

**SQLBolt Lesson 15 – Deleting Rows**

Topics to learn:

- DELETE
- WHERE
- Removing specific records
- Safe deletion practices
- Avoiding accidental full-table deletions
