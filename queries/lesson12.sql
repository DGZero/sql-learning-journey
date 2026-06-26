-- ====================================
-- SQLBolt Lesson 12
-- Order of execution of a Query
-- ====================================

1 - Find the number of movies each director has directed ✓

SELECT Director, COUNT(*) AS Total_Direction FROM movies
GROUP BY Director;

2 - Find the total domestic and international sales that can be attributed to each director ✓

SELECT Director, SUM (domestic_sales + international_sales) AS Total_Sales  FROM movies
INNER JOIN boxoffice 
    ON Movies.Id = boxoffice.Movie_id
GROUP BY Director;
