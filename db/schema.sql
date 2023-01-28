DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;

USE employees_db;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCEREMENT PRIMARY KEY,
    dept_name VARCHAR(30)
);

CREATE TABLE employee_role (
    id INT NOT NULL AUTO_INCEREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    role_id INT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    manager_id INT,
    FOREIGN KEY (role_id) REFERENCES employee_role(id),
    FOREIGN KEY (manager_id) REFERENCES employee_role(title),
    ON DELETE SET NULL
);