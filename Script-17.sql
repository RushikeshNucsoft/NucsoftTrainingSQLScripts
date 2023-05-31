CREATE TABLE department (
    id int PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO department (id, name) VALUES
(1, 'Human Resources'),
(2, 'Sales'),
(3, 'Finance'),
(4, 'Marketing'),
(5, 'Engineering');

CREATE TABLE employee (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(255) NOT NULL,
    dep_id INT,
    FOREIGN KEY (dep_id) REFERENCES department
);

INSERT INTO employee (emp_id, emp_name, dep_id) VALUES
(1, 'Aditi', 2),
(2, 'Alok', 1),
(3, 'Bhavana', 3),
(4, 'Chirag', 2),
(5, 'Deepika', 4),
(6, 'Gaurav', 1),
(7, 'Hina', 3),
(8, 'Isha', 4),
(9, 'Kunal', 1),
(10, 'Leena', 2);

-- Rename the 'id' column to 'dep_id'
ALTER TABLE department
RENAME COLUMN id TO dep_id;

-- Rename the 'name' column to 'dep_name'
ALTER TABLE department
RENAME COLUMN name TO dep_name;

ALTER TABLE employee ALTER COLUMN emp_id SET DATA TYPE SERIAL;
ALTER TABLE employee ADD COLUMN emp_id SERIAL PRIMARY KEY;
