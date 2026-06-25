1 - Find the list of all buildings that have employees ✓

SELECT * FROM employees
LEFT JOIN Buildings
    ON employees.building = Buildings.building_name
GROUP BY building

2 - Find the list of all buildings and their capacity ✓

SELECT * FROM Buildings

3 - List all buildings and the distinct employee roles in each building (including empty buildings) ✓

SELECT DISTINCT 
    buildings.building_name,
    employees.role
FROM buildings
LEFT JOIN employees
    ON buildings.building_name = employees.building
