-- ====================================
-- SQLBolt Lesson 10
-- Queries with Aggregates (Part 1)
-- ====================================

1 - Find the longest time that an employee has been at the studio ✓

SELECT Name, MAX(years_employed) FROM employees;

2 - For each role, find the average number of years employed by employees in that role ✓

SELECT ROLE, AVG(years_employed) AS AVG FROM employees
GROUP BY ROLE;

3 - Find the total number of employee years worked in each building ✓

SELECT Building, SUM(years_employed) AS AVG FROM employees
GROUP BY Building;
