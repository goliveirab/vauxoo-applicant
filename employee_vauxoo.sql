-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department (
    id          integer PRIMARY KEY,
    name        char(200) NOT NULL,
    description char(300)
);

CREATE TABLE employee (
    id                     integer PRIMARY KEY,
    first_name             char(100) NOT NULL,
    last_name              char(100) NOT NULL, 
    employee_department_id integer REFERENCES employee_department(id)
);

CREATE TABLE employee_hobby (
    id          integer PRIMARY KEY,
    name        char(100) NOT NULL,
    description char(300)
);

CREATE TABLE employee_hobbys (
    employee_id  integer REFERENCES employee(id),
    employee_hobby_id integer REFERENCES employee_hobby(id)
);

-- ...
-- Inserting employees and departments
-- ...
INSERT INTO employee_department VALUES 
    (1,'Engineering & Technology', 'Create and iterate on the products and tools of the future—for billions of users.'), 
    (2, 'Marketing & Communications', 'Define how people interact with technology and shape the perception of the company around the globe.'), 
    (3, 'Sales, Service & Support', 'Develop new business opportunities while increasing the use of our product offerings.'), 
    (4, 'Business Strategy', 'Anticipate opportunities and execute programs critical to the company’s short- and long-term growth.'), 
    (5, 'Design', 'Work across platforms to create powerful visuals that highlight each of our product’s unique personalities.'), 
    (6, 'Finance', 'From advising our product teams to managing day-to-day balance sheets, help keep our business on track to meet (or, better yet, exceed) our goals.');

INSERT INTO employee VALUES 
    (1, 'Samuel L.', 'Jackson', 1), 
    (2, 'Jessica', 'Biel', 1), 
    (3, 'Milla', 'Jovovich', 2), 
    (4, 'Michael J.', 'Fox', 3);

INSERT INTO employee_hobby VALUES
    (1, 'Pilates'),
    (2, 'Soccer'),
    (3, 'Movies');

INSERT INTO employee_hobbys VALUES
    (1, 2),
    (1, 3),
    (2, 2),
    (2, 1),
    (3, 2),
    (3, 1),
    (4, 3),
    (4, 2);

