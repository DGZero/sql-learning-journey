# SQLBolt Lesson 17 - Altering Tables

## 📚 Objective

Learn how to modify the structure of an existing table using the `ALTER TABLE` statement. This lesson introduces schema evolution, allowing databases to adapt as application requirements change.

---

## 📖 Concepts Learned

### 🛠️ ALTER TABLE

The `ALTER TABLE` statement is used to modify an existing table.

```sql
ALTER TABLE movies
ADD COLUMN genre TEXT;
```

---

### ➕ ADD COLUMN

A new column can be added to an existing table without affecting the current data.

```sql
ALTER TABLE employees
ADD COLUMN email TEXT;
```

The new column will be created, and existing rows will have a `NULL` value until updated.

---

### 📝 Renaming Tables

Some database systems allow renaming a table.

```sql
ALTER TABLE employees
RENAME TO staff;
```

> **Note:** SQLBolt focuses primarily on adding new columns, but it's useful to know that `ALTER TABLE` supports additional operations depending on the database system.

---

### 🏗️ Schema Evolution

As applications grow, databases often need to evolve.

Common schema changes include:

- Adding new columns
- Renaming tables
- Renaming columns (DBMS-dependent)
- Changing data types (DBMS-dependent)

---

### ⚠️ Best Practices

Before altering a production table:

- Back up important data.
- Understand the impact on applications.
- Test schema changes in a development environment.

---

## 📝 Exercises

### 1 - Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in. 

ALTER TABLE movies
ADD Aspect_Ratio FLOAT;
---

### 2 - Add another column named Language with a TEXT data type to store the language that the movie was released in. Ensure that the default for this language is English.

ALTER TABLE movies
ADD Language TEXT
    DEFAULT "English"
---

## 💼 Real-world Applications

`ALTER TABLE` is commonly used to:

- Add new customer information fields
- Expand application features
- Modify database schemas
- Support software updates
- Improve analytics datasets
- Prepare databases for new business requirements

---

## 🎯 Key Takeaways

- Learned how to modify an existing table.
- Added new columns using `ADD COLUMN`.
- Understood the concept of schema evolution.
- Learned that existing rows receive `NULL` values for new columns.
- Reinforced safe database modification practices.

---

## 💡 Interview Notes

Common interview questions related to this lesson:

- What is the purpose of the `ALTER TABLE` statement?
- How do you add a new column to a table?
- What happens to existing rows when a new column is added?
- Can `ALTER TABLE` rename a table?
- Why should schema changes be tested before production?

---

## 🚀 Next Lesson

**SQLBolt Lesson 18 – Dropping Tables**

Topics to learn:

- DROP TABLE
- Removing database objects
- Safe deletion practices
- DDL operations
