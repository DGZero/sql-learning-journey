-- ====================================
-- SQLBolt Lesson 11
-- Queries with Aggregates (Part 2)
-- ====================================

1 - Find the number of Artists in the studio (without a HAVING clause) ✓

SELECT Role, COUNT(*) AS Total_Employees FROM employees
WHERE Role = "Artist"
GROUP BY Role;

2 - Find the number of Employees of each role in the studio ✓

SELECT * FROM employees
GROUP BY ROLE;

3 - Find the total number of years employed by all Engineers ✓

SELECT Role, SUM(years_employed) AS Total_Years FROM employees
WHERE Role = "Engineer"
GROUP BY Role


