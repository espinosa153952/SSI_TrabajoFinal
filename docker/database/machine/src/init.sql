CREATE DATABASE IF NOT EXISTS mercury;

USE mercury;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE facts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fact TEXT NOT NULL
);

INSERT INTO facts (fact) VALUES
('Mercury does not have any moons or rings.'),
('Mercury is the smallest planet.'),
('Mercury is the closest planet to the Sun.'),
('Your weight on Mercury would be 38% of your weight on Earth.'),
('A day on the surface of Mercury lasts 176 Earth days.'),
('A year on Mercury takes 88 Earth days.'),
('It''s not known who discovered Mercury.'),
('A year on Mercury is just 88 days long.');

INSERT INTO users (password, username) VALUES
('johnny1987', 'john'),
('lovemykids111', 'laura'),
('lovemybeer111', 'sam'),
('mercuryisthesizeof0.056Earths', 'webmaster');