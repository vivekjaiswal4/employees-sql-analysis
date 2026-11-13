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
