-- Query: Create 3 new users
INSERT INTO users_schema.users (first_name, last_name, email, password)
VALUES ('Ben', 'Johns', 'goat@gmail.com', 'johnnyboy222'), ('Collin', 'Johns', 'right@gmail.com', 'johnnyboy333'), ('Pesa', 'Teoni', 'lefty@yahoo.com', 'goated888');

-- Query: Retrieve all the users
SELECT * FROM users_schema.users;

-- Query: Retrieve the first user using their email address
SELECT * FROM users_schema.users 
WHERE email = 'brandon.david4@outlook.com';

-- Query: Retrieve the last user using their id
SELECT * FROM users_schema.users
ORDER BY id DESC LIMIT 1;

-- Query: Change the user with id=3 so their last name is Pancakes
UPDATE users_schema.users
SET last_name = 'Pancakes'
WHERE id = 3;

-- Query: Delete the user with id=2 from the database
DELETE FROM users_schema.users
WHERE id=2;

-- Query: Get all the users, sorted by their first name
SELECT * FROM users_schema.users
ORDER BY first_name;

-- BONUS Query: Get all the users, sorted by their first name in descending order
SELECT * FROM users_schema.users
ORDER BY first_name DESC;