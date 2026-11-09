
CREATE DATABASE company;
DROP TABLE IF EXISTS employees;
CREATE TABLE employees
(
 emp_id SERIAL PRIMARY KEY,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 department VARCHAR(30),
 salary DECIMAL(10,2),
 city TEXT,
 age INT
);

INSERT INTO employees
(first_name, last_name, department, salary, city, age)
VALUES
('Rahul', 'Sharma', 'IT', 45000.00, 'Mumbai', 22),
('Priya', 'Patil', 'HR', 38000.00, 'Pune', 24),
('Amit', 'Verma', 'Finance', 52000.00, 'Delhi', 28),
('Sneha', 'Joshi', 'IT', 60000.00, 'Mumbai', 26),
('Rohan', 'Kumar', 'Marketing', 35000.00, 'Nashik', 23),
('Neha', 'Shinde', 'HR', 42000.00, 'Thane', 25),
('Vikas', 'Gupta', 'Sales', 48000.00, 'Delhi', 29),
('Pooja', 'Desai', 'Finance', 55000.00, 'Pune', 27),
('Karan', 'Mehta', 'IT', 65000.00, 'Bangalore', 30),
('Anjali', 'More', 'Marketing', 40000.00, 'Mumbai', 24),
('Sahil', 'Khan', 'Sales', 32000.00, 'Hyderabad', 21),
('Kavita', 'Rao', 'HR', 50000.00, 'Bangalore', 31),
('Arjun', 'Singh', 'IT', 75000.00, 'Delhi', 27),
('Meera', 'Kulkarni', 'Finance', 62000.00, 'Mumbai', 29),
('Aditya', 'Jain', 'Marketing', 44000.00, 'Pune', 26);

-- Questions:
-- Write a SQL query to display all columns and all records from the employees table.
select*from employees;

-- Display only employee names.
select first_name,last_name from employees;

-- Display employee names and their departments.
select first_name,last_name,department from employees;

-- Find employees who work in the IT department.
select * from employees where department='IT';

-- Find employees whose salary is greater than 45,000.
select * from employees where salary > 45000;

-- Find employees whose age is less than 30.
select * from employees where age<30;

-- Find employees who live in Mumbai.
select * from employees where city='Mumbai';

-- Display all employees in ascending order of salary.
select * from employees order by salary asc;

-- Display all employees in descending order of age.
select * from employees order by age desc;

-- Find the top 5 highest-paid employees.
select * from employees order by salary desc limit 5;

-- Display unique department names.
select distinct department from employees;

-- Find employees whose salary is between 40,000 and 55,000.
select * from employees where salary between 40000 and 55000;

-- Find employees who work in HR or Finance.
select * from employees where department='HR' or department='Finance';

-- Find employees who do not belong to the IT department.
select * from employees where not(department='IT');

-- Display employees whose names start with 'A'.
select * from employees where first_name like 'A%';

