CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(100),
    release_year INT
);

CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    director_name VARCHAR(100),
    movie_id INT REFERENCES movies(movie_id)
);

INSERT INTO 
movies (movie_name, release_year) VALUES 
('The Lord of the Rings', 2001),
('Parasite', 2019),
('Tarung', 2026);

INSERT INTO
directors (director_name, movie_id) VALUES 
('Peter Jackson', 1),
('Bong Joon Ho', 2),
('Aedy Ashraf', 3);

SELECT *
FROM movies

SELECT*
FROM directors

SELECT * 
FROM movies 
WHERE release_year > 2010;

SELECT m.movie_name, d.director_name
FROM movies m
JOIN directors d ON m.movie_id = d.movie_id
WHERE m.movie_name = 'Parasite';

SELECT COUNT(*) AS total_movies
FROM movies;




