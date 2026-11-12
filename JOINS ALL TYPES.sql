--DAY 4
--JOINS :All types of joins

--Table 1
create table employees1
(
emp_id int,
emp_name varchar(50) not null,
department_id int,
salary decimal(10,2)
);


INSERT INTO employees1 VALUES
(1, 'Rahul', 101, 50000),
(2, 'Amit', 102, 45000),
(3, 'Priya', 101, 60000),
(4, 'Sneha', 103, 55000),
(5, 'Karan', NULL, 35000),
(6, 'Neha', 105, 40000);


select * from employees1;
--Table 2
create table departments
(
department_id int,
department_name varchar(50)
);

INSERT INTO departments VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Marketing');

select * from departments;

--1.Inner Joins
-- Remove all the null values cells from both the table 
--  and only shows common values in both table
select e.emp_id,e.emp_name,d.department_id,d.department_name
from employees1 e
inner join 
departments d
on
e.department_id=d.department_id;

--2.Left Outer Join
--Show all the values of left tables and show null values of right table
--means show left tables all value even though their sharing column in right table values are null

select * from employees1 e
left outer join 
departments d 
on e.department_id=d.department_id;

--3.Right Outer Join
--Show all the values of right tables and show null values of left table
--means show right tables all value even though their sharing column in left table values are null
select * from employees1 e
right outer join 
departments d 
on e.department_id=d.department_id;

--4.Full Outer Join 
--Retrieve all values from both tables even though their values are non-matching
select * from employees1 e
full outer join
departments d
on 
e.department_id=d.department_id;

--5.Cross Join
-- retrieve all possible combination of first table values with second table's all value
select * from employees1 e
cross join 
departments d;

--6.self join 
--retrieve by grouping the the values from the first table who shares same value in second table
--eg:find employees who share same department 
select * from employees1 e1
join 
employees1 e2
on
e1.department_id=e2.department_id and e1.emp_id!=e2.emp_id
join 
departments d
on
e1.department_id=d.department_id;


-- JOIN type	Main purpose

-- INNER JOIN -	Matching records
-- LEFT JOIN -	All left records
-- RIGHT JOIN -	All right records
-- FULL OUTER JOIN   -	All records from both
-- CROSS JOIN	-Every possible combination
-- SELF JOIN  -	Join a table with itself

