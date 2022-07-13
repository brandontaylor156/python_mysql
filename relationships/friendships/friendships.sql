-- Query: Create 6 new users

INSERT INTO users (first_name, last_name)
VALUES ('Brandon', 'Taylor'), ('Kevin', 'Durant'), ('Roger', 'Federer'), ('Nick', 'Kyrgios'),
	   ('Kobe', 'Bryant'), ('Rafael', 'Nadal');

-- Query: Have user 1 be friends with user 2, 4 and 6

INSERT INTO friendships (user_id, friend_id)
VALUES (1, 2), (1, 4), (1, 6);

-- Query: Have user 2 be friends with user 1, 3 and 5

INSERT INTO friendships (user_id, friend_id)
VALUES (2, 1), (2, 3), (2, 5);

-- Query: Have user 3 be friends with user 2 and 5

INSERT INTO friendships (user_id, friend_id)
VALUES (3, 2), (3, 5);

-- Query: Have user 4 be friends with user 3

INSERT INTO friendships (user_id, friend_id)
VALUES (4, 3)

-- Query: Have user 5 be friends with user 1 and 6

INSERT INTO friendships (user_id, friend_id)
VALUES (5, 1), (5, 6);

-- Query: Have user 6 be friends with user 2 and 3

INSERT INTO friendships (user_id, friend_id)
VALUES (6, 2), (6, 3);

-- Query: Display the relationships created as shown in the table in the above image

SELECT users.first_name AS first_name, users.last_name AS last_name, 
	users2.first_name AS friend_first_name, users2.last_name AS friend_last_name FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS users2 ON users2.id = friendships.friend_id;

-- NINJA Query: Return all users who are friends with the first user, make sure their names are displayed in results.

SELECT users2.first_name AS friend_first_name, users2.last_name AS friend_last_name FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS users2 ON users2.id = friendships.friend_id
WHERE users.id = 1;

-- NINJA Query: Return the count of all friendships

SELECT COUNT(*) AS num_friendships from friendships;

-- NINJA Query: Find out who has the most friends and return the count of their friends.

SELECT users.id, users.first_name, users.last_name, COUNT(friend_id) AS num_friends FROM users
JOIN friendships ON users.id = friendships.user_id
GROUP BY users.id
ORDER BY num_friends DESC LIMIT 1

-- NINJA Query: Return the friends of the third user in alphabetical order

SELECT friends.* FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS friends ON friends.id = friendships.friend_id
WHERE users.id = 3
ORDER BY friends.first_name;