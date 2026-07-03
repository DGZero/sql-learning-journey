# SQLBolt Lesson 13 - Inserting Rows

## 📚 Objective

Learn how to add new records to a database using the `INSERT INTO` statement. This is one of the four fundamental SQL operations (CRUD) and is essential for populating tables with new data.

---

## 📖 Concepts Learned

### ➕ INSERT INTO

The `INSERT INTO` statement is used to add one or more new rows into a table.

```sql
INSERT INTO movies
    (id, title, director, year, length_minutes)
VALUES
    (15, 'Toy Story 4', 'Josh Cooley', 2019, 100);
```

---

### 📝 Specifying Columns

It is considered best practice to explicitly specify the columns when inserting data.

```sql
INSERT INTO employees
    (name, role, years_employed)
VALUES
    ('John Doe', 'Engineer', 5);
```

This makes the query easier to read and prevents issues if the table structure changes.

---

### 📦 Inserting Multiple Rows

You can insert multiple records using a single `INSERT` statement.

```sql
INSERT INTO movies
    (id, title, director, year, length_minutes)
VALUES
    (17, 'Finding Dory', 'Andrew Stanton', 2016, 97),
    (18, 'Coco', 'Lee Unkrich', 2017, 105);
```

---

### 📌 Data Types

Each value must match the corresponding column's data type.

Examples:

- Numbers → No quotes

```sql
2019
100
```

- Text → Single quotes

```sql
'Toy Story 4'
'Josh Cooley'
```

---

## 📝 Exercises

### Exercise 1 - Insert a New Movie

Insert a new movie into the `movies` table.

```sql
INSERT INTO movies
    (id, title, director, year, length_minutes)
VALUES
    (15, 'Toy Story 4', 'Josh Cooley', 2019, 100);
```

---

### Exercise 2 - Insert Another Movie

Insert another movie into the table.

```sql
INSERT INTO movies
    (id, title, director, year, length_minutes)
VALUES
    (16, 'Monsters, Inc.', 'Pete Docter', 2001, 92);
```

---

### Exercise 3 - Insert Multiple Movies

Insert multiple movies using a single `INSERT` statement.

```sql
INSERT INTO movies
    (id, title, director, year, length_minutes)
VALUES
    (17, 'Finding Dory', 'Andrew Stanton', 2016, 97),
    (18, 'Coco', 'Lee Unkrich', 2017, 105);
```

---

## 💼 Real-world Applications

`INSERT` is used every day in databases to:

- Register new customers
- Create new orders
- Store application logs
- Save user accounts
- Insert IoT sensor data
- Populate Data Warehouses during ETL processes
- Load datasets into analytical databases

---

## 🎯 Key Takeaways

- Learned how to insert new records using `INSERT INTO`.
- Specified columns explicitly when inserting data.
- Inserted multiple rows in a single statement.
- Understood the importance of matching data types.
- Learned to use single quotes for text values.

---

## 💡 Interview Notes

Common interview questions related to this lesson:

- What is the purpose of the `INSERT INTO` statement?
- Why is it recommended to specify the column names?
- Can you insert multiple rows with a single `INSERT`?
- What happens if the inserted values don't match the column data types?
- What is the difference between inserting all columns and only specific columns?

---

## 🚀 Next Lesson

**SQLBolt Lesson 14 – Updating Rows**

Topics to learn:

- UPDATE
- SET
- WHERE
- Updating specific records
- Avoiding accidental full-table updates
