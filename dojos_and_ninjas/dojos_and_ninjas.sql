-- Query: Create 3 new dojos

    INSERT INTO dojos_and_ninjas.dojos (name)
    VALUES ('Santa Barbara'), ('San Diego'), ('San Francisco');

-- Query: Delete the 3 dojos you just created

    DELETE FROM dojos_and_ninjas.dojos 
    WHERE name = 'Santa Barbara' or name = 'San Diego' or name = 'San Francisco';

-- Query: Create 3 more dojos

    INSERT INTO dojos_and_ninjas.dojos (name)
    VALUES ('Simi Valley'), ('Pacoima'), ('Palmdale');

-- Query: Create 3 ninjas that belong to the first dojo

    INSERT INTO dojos_and_ninjas.ninjas (first_name, last_name, age, dojo_id)
    VALUES ('Brandon', 'Taylor', 26, 17), ('Andy', 'Lim', 21, 17), ('Ben', 'Johns', 23, 17);

-- Query: Create 3 ninjas that belong to the second dojo

    INSERT INTO dojos_and_ninjas.ninjas (first_name, last_name, age, dojo_id)
    VALUES ('Mikey', 'Navarro', 26, 18), ('Ciso', 'Ciso', 21, 18), ('Ken', 'Fukuyama', 22, 18);

-- Query: Create 3 ninjas that belong to the third dojo

    INSERT INTO dojos_and_ninjas.ninjas (first_name, last_name, age, dojo_id)
    VALUES ('Rex', 'Navarro', 99, 19), ('Carlos', 'Mencia', 51, 19), ('Tom', 'Segura', 52, 19);

-- Query: Retrieve all the ninjas from the first dojo

    SELECT * FROM dojos_and_ninjas.ninjas
    WHERE dojo_id = 17;

-- Query: Retrieve all the ninjas from the last dojo

    SELECT * FROM dojos_and_ninjas.ninjas
    WHERE dojo_id = 19;

-- Query: Retrieve the last ninja's dojo

    SELECT * FROM dojos
    JOIN ninjas
    ON dojos.id = ninjas.dojo_id
    ORDER BY ninjas.id DESC LIMIT 1;


-- Submit your .txt file that contains all the queries you ran in the shell