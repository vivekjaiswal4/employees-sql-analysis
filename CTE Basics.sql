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