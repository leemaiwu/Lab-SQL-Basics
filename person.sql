-- PERSON TABLE --

-- 1. 
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40),
    age INTEGER,
    height FLOAT,
    city VARCHAR(30),
    favorite_color VARCHAR(30)
);

-- 2.
INSERT INTO person ( name, age, height, city, favorite_color )
VALUES ('Laura', 16, 165, 'Orem', 'Black'),
('Jack', 35, 175, 'Provo', 'Blue'),
('Race', 5, 180, 'American Fork', 'Red'),
('Romney',18, 175, 'Orem', 'Blue'),
('Linda', 18, 170, 'Provo', 'Green');

-- 3.
SELECT * FROM person
ORDER BY height DESC;

-- 4.
SELECT * FROM person
ORDER BY height ASC;

-- 5.
SELECT * FROM person
ORDER BY age DESC;

-- 6.
SELECT * FROM person
WHERE age > 20;

-- 7.
SELECT * FROM person
WHERE age = 18;

-- 8.
SELECT * FROM person
WHERE age < 20 AND age > 30;

-- 9.
SELECT * FROM person
WHERE age != 27;

-- 10.
SELECT * FROM person
WHERE favorite_color != 'Red';

-- 11.
SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

-- 12.
SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

-- 13.
SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

-- 14.
SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');
