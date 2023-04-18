-- Add 3 new artists to the artist table. (It already exists.)
INSERT INTO artist (name) VALUES 
('John Doe'),
('Jane Smith'),
('Bob Johnson');
SELECT * FROM artist;
-- Select 10 artists in reverse alphabetical order.
SELECT name
FROM artist
ORDER BY name DESC
LIMIT 10;
-- Select 5 artists in alphabetical order.
SELECT name FROM artist ORDER BY name ASC LIMIT 5

-- Select all artists that start with the word ‘Black’.
SELECT * FROM artist WHERE name LIKE 'Black%';

-- Select all artists that contain the word ‘Black’.
SELECT * FROM artist
WHERE name LIKE '%Black%';
