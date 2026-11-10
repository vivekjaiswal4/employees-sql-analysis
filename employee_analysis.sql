
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

--DAY 1--

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

--DAY 2--

--AGGREGATE FUNCTIONS
-- Your questions:
-- 1. Count total employees.
select count(*) from employees;

-- 2. Find the total salary of all employees.
select sum(salary) as total_salary from employees; 

-- 3. Find the average salary.
select avg(salary) from employees;

-- 4. Find the highest salary.
select max(salary) from employees;

-- 5. Find the lowest salary.
select min(salary) from employees;

-- 6. Count employees working in IT.
select count(department) from employees where department='IT';

-- 7. Find the average age of employees.
select avg(age) as avg_age from employees;

-- 8. Find the total number of employees living in Mumbai.
select count(city) as liv_in_mumbai from employees where city='Mumbai';


--GROUP BY
  
-- Q1. Count employees in each department.
select department,count(*) from employees group by department;

-- Q2. Find average salary in each department.
select department,avg(salary) as avg_salary from employees group by department;

-- Q3. Find maximum salary in each department.
select department,max(salary) from employees group by department;

-- Q4. Find minimum salary in each department.
select department,min(salary) from employees group by department;

-- Q5. Find total salary paid by each department.
select department,sum(salary) from employees group by department;

-- Q6. Count employees in each city.
select city,count(city) from employees group by city;

-- Q7. Find average age in each department.
select department,avg(age) from employees group by department;


---HAVING

-- Q1. Find departments having more than 2 employees.
select department,count(*) from employees group by department having count(*)>2;

-- Q2. Find departments whose average salary is greater than 45000.
select department,avg(salary) from employees group by department having avg(salary)>45000;


-- Q3. Find departments whose total salary is greater than 100000.
select department,sum(salary) from employees group by department having sum(salary)>100000;

-- Q4. Find cities having more than 2 employees.
select city,count(*) from employees group by city having count(city)>2;

-- Q5. Find departments where maximum salary is greater than 60000.
select department,max(salary) from employees group by department having max(salary)>60000;


