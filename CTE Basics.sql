-- Day 7 – SQL CTE Practice

-- Q1. Basic CTE
-- Find all employees working in the IT department.
with it_employees as(select * from employees where department='IT') select * from it_employees;
-- Q2. CTE with condition
-- Find employees earning more than ₹45,000. Display all columns.
with salary_more as(select * from employees where salary > 45000) select * from salary_more;

-- Q3. CTE with GROUP BY
-- Find the total number of employees in each department.
with total_emp_dept as (select department,count(department) from employees group by department) select * from total_emp_dept;

-- Q1. CTE with HAVING
-- Find departments having more than 2 employees.
with emp_dept as(select department,count(department)as total_emp
from employees group by department) select * from emp_dept where total_emp>2; 

-- Q2. CTE with AVG
-- Find departments whose average salary is greater than ₹45,000. Display department and average salary.
with dept_salary as 
(select department,avg(salary) as avg_salary from employees group by department)
select * from dept_salary where avg_salary>45000;

-- Q3. Multiple CTEs
-- Find employees working in departments where the total salary of the department is greater than ₹100,000.
with total_dept_salary as 
(select department,sum(salary) as total_salary
from employees group by department)
select * from total_dept_salary where total_salary>100000;


---Day 8---
Advanced CTEs

-- Q1. CTE with HAVING
-- Find departments having more than 2 employees.
with emp_dept as(select department,count(department)as total_emp
from employees group by department) select * from emp_dept where total_emp>2; 

-- Q2. CTE with AVG
-- Find departments whose average salary is greater than ₹45,000. Display department and average salary.
with dept_salary as 
(select department,avg(salary) as avg_salary from employees group by department)
select * from dept_salary where avg_salary>45000;

-- Q3. Multiple CTEs
-- Find employees working in departments where the total salary of the department is greater than ₹100,000.
with total_dept_salary as 
(select department,sum(salary) as total_salary
from employees group by department)
select * from total_dept_salary where total_salary>100000;


-- Q4. Multiple CTEs
-- Find employees earning more than their department's average salary.
with high_salary as (select department,avg(salary) as avg_salary from employees e group by department) select *
from employees e
join high_salary h 
on
e.department=h.department
where e.salary>h.avg_salary;

-- Q5.Find departments where the maximum salary is greater than ₹60,000. Display:
-- - Department
-- - Maximum salary
-- - Average salary
with max_salary as(select department,max(salary) as max_sal,avg(salary) from employees group by department) select * from max_salary where max_sal>60000;
