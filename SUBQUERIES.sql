---DAY 5---
-- Sub-Queries:Queries inside SQL query.

select * from employees;


-- Find employees earning more than the average salary.
Select * from employees where salary>(select avg(salary) from employees); 


-- Find employees earning the highest salary.
select * from employees where salary=(select max(salary) from employees);


-- Find employees working in the department with the highest average salary.
select * from employees
where department 
in 
(select department
from employees 
group by department
order by avg(salary)
desc limit 1);



-- Find employees whose salary is greater than the salary of employee Rahul.
select * from employees where salary>(select salary from employees where first_name='Rahul');


-- Find departments having employees earning more than ₹50,000.
select * from employees where department in (select department from employees where salary>50000 ); 


-- Find employees belonging to departments located in Mumbai.
-- Find employees belonging to departments having employees in Mumbai.
select * from employees where department in (select department from employees where city='Mumbai');


-- Find the second-highest salary.
select * from employees where salary in ( select salary from employees order by salary desc limit 1 offset 1 );


-- Find employees earning more than their department's average salary.
SELECT *
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department = e.department
);
-- Find employees earning less than their department's average salary.

SELECT *
FROM employees e
WHERE salary < (
    SELECT AVG(salary)
    FROM employees
    WHERE department = e.department
);


--DAY 6--
-- WORKING ON Employees Table
-- revision of subqueries
-- Operator -->	What it checks
-- IN	Matches any value
-- NOT IN	Matches none of the values
-- EXISTS	At least one row exists
-- NOT EXISTS	No row exists
-- ANY	Comparison true for at least one value
-- ALL	Comparison true for every value

--REVISION:

-- Part A — Basic subqueries
-- Easy
-- Q1. Find employees earning more than the average salary of all employees.
select * from employees where salary > (select avg(salary) from employees) ;

-- Q2. Find employees who earn the highest salary in the IT department.
select * from employees where salary =(select max(salary) from employees where department='IT');

-- Q3. Find all employees working in departments where at least one employee earns more than ₹50,000.
select * from employees where department in (select department from employees where salary>50000);

-- Part B — IN, NOT IN, EXISTS
-- Medium
-- Q4. Find employees who do not belong to departments having an employee from Mumbai.
select * from employees where department not in(select department from employees where city='Mumbai');

-- Q5. Find employees whose department has at least one employee earning more than ₹50,000.

select * from employees where department in(select department from employees where salary>=50000);

-- Q6. Find employees who are the only employee in their department.
select * from employees where department in (select department,count(emp_id) from employees group by department having count(emp_id)=1);

-- Part C — ANY and ALL
-- Challenging
-- Q7. Find employees earning more than, at least one employee in the HR department.
select * from employees where salary > any(select salary from employees where department='HR' );

