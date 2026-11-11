select * from employees;
---DAY 3---
--ORDER BY

-- Display all employees in ascending order of salary.
select * from employees order by salary asc;


-- Display all employees in descending order of age.
select * from employees order by age desc;


-- Display employees according to department alphabetically.
select * from employees order by department;


-- Display employees by salary highest first and age lowest first.
select * from employees order by salary desc,age asc;


-- Display the top salaries in descending order.
select * from employees order by salary desc limit 3;

---LIMIT AND OFFSET

-- Display the first 5 employees.
select * from employees limit 5;


-- Find the top 3 highest-paid employees.
select * from employees order by salary desc limit 3; 


-- Find the 2 lowest-paid employees.
select * from employees order by salary asc limit 2;


-- Display 5 employees after skipping the first 5 rows.
select * from employees limit 5 offset 5;

-- Find the 5 oldest employees.
select * from employees order by age desc limit 5;


--JOINS---

--Table 1
create table employee
(
emp_id int,
emp_name varchar(50) not null,
department_id int,
salary decimal(10,2)
);


INSERT INTO employee VALUES
(1, 'Rahul', 101, 50000),
(2, 'Amit', 102, 45000),
(3, 'Priya', 101, 60000),
(4, 'Sneha', 103, 55000),
(5, 'Karan', NULL, 35000),
(6, 'Neha', 105, 40000);

select * from employee;
--Table 2
create table department
(
department_id int,
department_name varchar(50)
);

INSERT INTO department VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Marketing');

select * from department;

-- JOIN assignment
-- 5 questions

-- Q1. Display employee names and their department names, but only matching records.
select e.emp_name,d.department_name 
from employee e 
inner join department d 
on e.department_id=d.department_id;



-- Q2. Display all employees, including those without a matching department.
select * from employee e
left join department d
on
e.department_id=d.department_id;


-- Q3. Display all departments, including departments with no employees.
select * from employee e
right join department d
on
e.department_id=d.department_id;


-- Q4. Display every employee and every department, including unmatched records.
select * from employee e 
full outer join department d
on 
e.department_id=d.department_id;


-- Q5. Find employees who don't have a matching department.
select * from employee e
left join department d
on
e.department_id=d.department_id
where d.department_id is null;
