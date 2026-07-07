# SQLBolt Lesson 18 - Dropping Tables

## 📚 Objective

Learn how to permanently remove database tables using the `DROP TABLE` statement. This lesson concludes the SQLBolt course by introducing the final Data Definition Language (DDL) operation.

---

## 📖 Concepts Learned

### 🗑️ DROP TABLE

The `DROP TABLE` statement permanently removes a table and all of its data from the database.

```sql
DROP TABLE movies;
```

Once executed, both the table structure and all stored records are deleted.

---

### ⚠️ Permanent Deletion

Unlike `DELETE`, which removes rows while keeping the table structure, `DROP TABLE` completely removes the table itself.

Comparison:

| Command | Removes Data | Removes Table Structure |
|----------|:------------:|:-----------------------:|
| `DELETE` | ✅ | ❌ |
| `DROP TABLE` | ✅ | ✅ |

---

### 🛡️ Best Practices

Before dropping a table:

- Verify that the table is no longer needed.
- Back up important data.
- Confirm there are no applications depending on the table.
- Avoid executing `DROP TABLE` in production without proper validation.

---

### 📦 DDL (Data Definition Language)

`DROP TABLE` belongs to the **Data Definition Language (DDL)** family, along with:

- `CREATE TABLE`
- `ALTER TABLE`
- `DROP TABLE`

These commands define and modify the database structure.

---

## 📝 Exercises

### 1 - We ve sadly reached the end of our lessons, lets clean up by removing the Movies table

DROP TABLE movies

2 - And drop the BoxOffice table as well

DROP TABLE boxoffice
---

## 💼 Real-world Applications

`DROP TABLE` is commonly used to:

- Remove temporary tables
- Delete obsolete database structures
- Clean up development environments
- Rebuild databases during testing
- Remove deprecated application tables

---

## 🎯 Key Takeaways

- Learned how to remove an entire table using `DROP TABLE`.
- Understood the difference between `DELETE` and `DROP TABLE`.
- Learned that `DROP TABLE` permanently removes both data and structure.
- Reinforced safe database administration practices.
- Completed all core SQLBolt lessons.

---

## 💡 Interview Notes

Common interview questions related to this lesson:

- What is the difference between `DELETE`, `TRUNCATE`, and `DROP TABLE`?
- Is it possible to recover a table after `DROP TABLE`?
- When should `DROP TABLE` be used?
- Why is `DROP TABLE` considered a DDL command?
- What precautions should be taken before dropping a table?

---

## 🏆 Course Completed

Congratulations! 🎉

You have successfully completed all **18 SQLBolt lessons**, covering the fundamentals of SQL, including:

- SELECT
- WHERE
- ORDER BY
- LIMIT
- INNER JOIN
- LEFT JOIN
- NULL values
- Expressions
- Aggregate Functions
- GROUP BY
- HAVING
- Order of Execution
- INSERT
- UPDATE
- DELETE
- CREATE TABLE
- ALTER TABLE
- DROP TABLE

You now have a strong SQL foundation and are ready to move on to more advanced topics such as PostgreSQL, Common Table Expressions (CTEs), Window Functions, Subqueries, Indexes, and real-world SQL challenges.
