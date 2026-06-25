# SQL Lesson 7 - OUTER JOINs

## Concepts Learned

In this lesson, I learned how OUTER JOINs work and how they differ from INNER JOINs.

### Key Concepts

- LEFT JOIN
- RIGHT JOIN
- Missing values (NULL)
- Identifying unmatched records
- Preserving data from one table

---

## INNER JOIN vs OUTER JOIN

### INNER JOIN

Returns only records that exist in both tables.

Example:

```sql
SELECT *
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;
```

---

### LEFT JOIN

Returns all records from the left table, even when there is no matching record in the right table.

Example:

```sql
SELECT *
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;
```

This is useful when we want to see customers who have never placed an order.

---

## Example Scenario

### Customers Table

| customer_id | name |
|------------|------|
| 1 | John |
| 2 | Maria |
| 3 | Carla |

### Orders Table

| order_id | customer_id |
|-----------|------------|
| 101 | 1 |
| 102 | 2 |

Using an INNER JOIN:

| name | order_id |
|------|----------|
| John | 101 |
| Maria | 102 |

Using a LEFT JOIN:

| name | order_id |
|------|----------|
| John | 101 |
| Maria | 102 |
| Carla | NULL |

---

## My Explanation

INNER JOIN returns only matching records between tables.

LEFT JOIN returns all records from the left table, even if there is no match in the right table.

This allows us to identify missing relationships and incomplete data.

---

## Practical Applications in Data Analytics

- Finding customers without purchases
- Identifying products without sales
- Detecting missing relationships in datasets
- Data quality validation
- Building complete business reports

---

## Study Notes

The biggest takeaway from this lesson was understanding when to use LEFT JOIN instead of INNER JOIN.

LEFT JOIN is useful when the absence of data is also important information.

For example, identifying customers who have never purchased a product can be as valuable as analyzing customers who already have purchases.

---

## Status

✅ Completed

git commit -m "Complete SQLBolt Lesson 7 - OUTER JOINs"
