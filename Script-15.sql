CREATE TABLE department (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);


INSERT INTO DedupeEngineNitin.dbo.department
(id, name)
VALUES(1, 'Development');


INSERT INTO DedupeEngineNitin.dbo.department
(id, name)
VALUES(2, 'Testing');

INSERT INTO DedupeEngineNitin.dbo.department
(id, name)
VALUES(3, 'Marketing');

INSERT INTO DedupeEngineNitin.dbo.department
(id, name)
VALUES(4, 'Sales');

INSERT INTO DedupeEngineNitin.dbo.employee
(id, name)
VALUES(1, 'Rushikesh');

INSERT INTO DedupeEngineNitin.dbo.employee
(id, name)
VALUES(2, 'Nitin');

INSERT INTO DedupeEngineNitin.dbo.employee
(id, name)
VALUES(3, 'Tejas');

INSERT INTO DedupeEngineNitin.dbo.employee
(id, name)
VALUES(4, 'Hritik');

INSERT INTO DedupeEngineNitin.dbo.employee
(id, name)
VALUES(5, 'Sanjana');

INSERT INTO DedupeEngineNitin.dbo.employee
(id, name)
VALUES(6, 'Saud');

CREATE TABLE employee_only (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    city VARCHAR(255)
);

INSERT INTO DedupeEngineNitin.dbo.employee_only
(id, name, age, city)
VALUES(1, 'Rushikesh', 25, 'Mumbai');


INSERT INTO DedupeEngineNitin.dbo.employee_only
(id, name, age, city)
VALUES(2, 'Nitin', 25, 'Mumbai');

INSERT INTO DedupeEngineNitin.dbo.employee_only
(id, name, age, city)
VALUES(3, 'Tejas', 25, 'Mumbai');


INSERT INTO DedupeEngineNitin.dbo.employee_only
(id, name, age, city)
VALUES(4, 'Abhishek', 25, 'Mumbai');

INSERT INTO DedupeEngineNitin.dbo.employee_only
(id, name, age, city)
VALUES(5, 'Saud', 25, 'Mumbai');

INSERT INTO DedupeEngineNitin.dbo.employee_only
(id, name, age, city)
VALUES(6, 'Sanjana', 21, 'Mumbai');











   
   
    










