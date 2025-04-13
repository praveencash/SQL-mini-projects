CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    director VARCHAR(100),
    release_year INT,
    genre VARCHAR(50),
    rating FLOAT,
    reviews INT
)

INSERT INTO movies (movie_id, title, director, release_year, genre, rating, reviews)
VALUES (1, 'Inception', 'Christopher Nolan', 2010, 'Sci-Fi', 8.8, 10000)

INSERT INTO movies (movie_id, title, director, release_year, genre, rating, reviews)
VALUES (2, 'The Dark Knight', 'Christopher Nolan', 2008, 'Action', 9.0, 20000)

INSERT INTO movies (movie_id, title, director, release_year, genre, rating, reviews)
VALUES (3, 'Interstellar', 'Christopher Nolan', 2014, 'Sci-Fi', 8.6, 15000)

INSERT INTO movies (movie_id, title, director, release_year, genre, rating, reviews)
VALUES (4, 'Titanic', 'James Cameron', 1997, 'Romance', 7.8, 25000)

INSERT INTO movies (movie_id, title, director, release_year, genre, rating, reviews)
VALUES (5, 'The Matrix', 'Wachowskis', 1999, 'Sci-Fi', 8.7, 12000)

INSERT INTO movies (movie_id, title, director, release_year, genre, rating, reviews)
VALUES (6, 'Avengers: Endgame', 'Anthony and Joe Russo', 2019, 'Action', 8.4, 30000)

--1. Show all movies
select * from movies
--2. Show movie titles and ratings only
select title, rating from movies
--3. Show movies released after 2010
select * from movies where release_year > 2010
--4. Show movies with a rating greater than 8
select * from movies where rating > 8
--5. Show movies with no reviews (reviews = 0)
select * from movies where reviews = 0
--6. Show all movies of the genre “Action” sorted by rating (high to low)
select * from movies where genre = 'Action' order by rating desc
--7. Show the top 3 highest-rated movies
select * from movies order by rating desc limit 3
--8. Find movies with a rating between 6 and 9
select * from movies where rating between 6 and 9
--9. Skip the first 2 movies and show the next 3 movies sorted by release year
select * from movies order by release_year asc limit 3 offset 2