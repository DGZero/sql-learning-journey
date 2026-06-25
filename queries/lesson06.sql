-- Lesson 6 - JOINs

-- INNER JOIN

1 - Find the domestic and international sales for each movie ✓

SELECT * FROM movies
INNER JOIN Boxoffice ON movies.id = Boxoffice.Movie_id

2 - Show the sales numbers for each movie that did better internationally rather than domestically ✓

SELECT * FROM movies
INNER JOIN Boxoffice ON movies.id = Boxoffice.Movie_id
WHERE international_sales > domestic_sales

3 - List all the movies by their ratings in descending order ✓

SELECT * FROM movies
INNER JOIN Boxoffice ON movies.id = Boxoffice.Movie_id
ORDER BY rating DESC
