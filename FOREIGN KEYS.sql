CREATE TABLE employees(
emp_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL UNIQUE,
department VARCHAR(50) NOT NULL UNIQUE,
salary FLOAT NOT NULL CHECK(salary > 0),
join_date DATE DEFAULT '2025-10-22',
is_active BOOLEAN DEFAULT TRUE
);

ALTER TABLE employees
ADD email VARCHAR(150);

SELECT * FROM employees;

CREATE TABLE departments(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50),
emp_id INT,
FOREIGN KEY (emp_id)
REFERENCES employees(emp_id)
);

SELECT * FROM departments;

ALTER TABLE employees
ADD dept_id INT;

ALTER TABLE employees
ADD FOREIGN KEY (dept_id)
REFERENCES departments(dept_id);

SELECT * FROM employees;