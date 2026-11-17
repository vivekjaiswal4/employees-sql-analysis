--DAY 9--
-- Window function 
-- Basic Queries on-->over(),partition by

-- Q1. Display all employees along with the average salary of the entire company.
select emp_id,first_name,Salary,avg(salary)
over() as cmp_avg_salary from employees;

-- Q2. Display all employees along with their department's average salary.
select emp_id,first_name,salary,department,avg(salary) 
over(partition by department) as Deptwise_avg from employees;

-- Q3. Display all employees along with the total salary of their respective departments.
select emp_id,first_name,salary,department,sum(salary)
over(partition by department) as cmp_total from employees;