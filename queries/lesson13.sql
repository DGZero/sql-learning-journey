1 -Add the studios new production, Toy Story 4 to the list of movies (you can use any director) ✓

INSERT INTO movies
    (id, title, director, year, length_minutes)
VALUES
    (15, 'Toy Story 4', 'Josh Cooley', 2019, 100);


2 - Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the table. BoxOffice ✓

INSERT INTO boxoffice
(movie_id, rating, domestic_sales, international_sales)
VALUES (15,8.7,340000000,270000000)

