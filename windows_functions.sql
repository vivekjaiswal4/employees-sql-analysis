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



-- DAY 10__
-- Part A – Basic
-- Q1. Display all employees along with the maximum salary of the entire company.
select emp_id,first_name,department,salary,max(salary) over() from employees;

-- Q2. Display all employees along with the minimum salary of the entire company.
select emp_id,first_name,department,salary,min(salary) over() from employees;

-- Q3. Display all employees along with the total number of employees in the company using a Window Function.
select emp_id,first_name,department,salary,count(emp_id) over() from employees;

-- Part B – Department-wise
-- Q4. Display all employees along with the maximum salary in their respective departments.
select emp_id,first_name,last_name,department,salary,max(salary) over(partition by department) from employees;

-- Q5. Display all employees along with the minimum salary in their respective departments.
select emp_id,first_name,last_name,department,salary,min(salary) over(partition by department) from employees;

-- Q6. Display all employees along with the number of employees working in their respective departments.
select emp_id,first_name,last_name,department,count(emp_id) over(partition by department) from employees;

-- Part C – Easy Medium
-- Q7. Display all employees along with the total salary of the entire company.
select emp_id,first_name,last_name,department,salary,sum(salary) over() from employees;

-- Q8. Display all employees along with the average age of their respective departments.
select emp_id,first_name,last_name,department,age,avg(age) over(partition by department) from employees;


-- Q9. Display all employees along with the total number of employees living in their respective cities.
select emp_id,first_name,last_name,department,city,count(emp_id) over(partition by city) from employees;

-- Q10. Display all employees along with the average salary of employees living in their respective cities.
select emp_id,first_name,last_name,department,city,salary,avg(salary) over(partition by city) from employees;
