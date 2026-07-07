# SQLBolt Lesson 16 - Creating Tables

## 📚 Objective

Learn how to create new database tables using the `CREATE TABLE` statement. This lesson introduces table structure, column definitions, and SQL data types, which are fundamental concepts for designing relational databases.

---

## 📖 Concepts Learned

### 🏗️ CREATE TABLE

The `CREATE TABLE` statement is used to create a new table in a database.

```sql
CREATE TABLE employees (
    id INTEGER,
    name TEXT,
    salary INTEGER
);
```

---

### 📋 Defining Columns

Each table is composed of one or more columns.

Each column requires:

- A column name
- A data type

Example:

```sql
CREATE TABLE products (
    id INTEGER,
    product_name TEXT,
    price REAL
);
```

---

### 📦 Common SQL Data Types

| Data Type | Description | Example |
|------------|-------------|---------|
| `INTEGER` | Whole numbers | `10`, `250` |
| `REAL` | Decimal numbers | `3.14`, `99.99` |
| `TEXT` | Strings | `'SQLBolt'` |
| `BLOB` | Binary data | Images, files |

---

### 🔑 Primary Keys

Most tables include a unique identifier called a **Primary Key**.

Example:

```sql
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    role TEXT
);
```

A Primary Key guarantees that each row is unique.

---

### 🛡️ Database Design

Creating tables is the first step when designing a database.

A well-designed table:

- Uses appropriate data types.
- Stores one type of information.
- Has meaningful column names.
- Includes a Primary Key whenever possible.

---

## 📝 Exercises

### Exercise 1 - Create a New Table

Create a new table with the required columns and data types.

---

### Exercise 2 - Define Appropriate Data Types

Choose the correct SQL data type for each column.

---

### Exercise 3 - Validate the Table Structure

Ensure the table matches the expected schema.

---

## 💼 Real-world Applications

`CREATE TABLE` is used to:

- Design relational databases
- Create application data models
- Store customer information
- Build Data Warehouse staging tables
- Define analytics datasets
- Initialize new database systems

---

## 🎯 Key Takeaways

- Learned how to create new tables using `CREATE TABLE`.
- Defined columns and their data types.
- Understood common SQL data types.
- Learned the role of a Primary Key.
- Built the foundation for database design.

---

## 💡 Interview Notes

Common interview questions related to this lesson:

- What is the purpose of the `CREATE TABLE` statement?
- What are the most common SQL data types?
- What is a Primary Key?
- Why should every table have a unique identifier?
- How do you choose the correct data type for a column?

---

## 🚀 Next Lesson

**SQLBolt Lesson 17 – Altering Tables**

Topics to learn:

- ALTER TABLE
- ADD COLUMN
- RENAME COLUMN
- Modifying table structures
- Database schema evolution
