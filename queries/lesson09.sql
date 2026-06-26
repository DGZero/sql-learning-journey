1 - List all movies and their combined sales in millions of dollars ✓

SELECT
    title,
    (domestic_sales + international_sales) / 1000000.0 AS combined_sales
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id
ORDER BY combined_sales DESC;

2 - List all movies and their ratings in percent ✓

SELECT
    title,
    boxoffice.rating * 10 as rating_Percent
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id

SOLUÇÕES INCORRETAS QUE TENTEI:

SELECT
    title,
    (boxoffice.rating / 10) * 100 as rating_Percent
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id

E

SELECT
    title,
    boxoffice.rating * 100 as rating_Percent
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id

3 - List all movies that were released on even number years ✓

SELECT
    title,
    year
FROM movies
WHERE year % 2 = 0


