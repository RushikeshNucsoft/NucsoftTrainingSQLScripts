CREATE TABLE department (
  id INT PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE empdepmapping (
  id INT PRIMARY KEY,
  empId INT,
  deptId INT,
  FOREIGN KEY (empId) REFERENCES employee(id),
  FOREIGN KEY (deptId) REFERENCES department(id)
);
