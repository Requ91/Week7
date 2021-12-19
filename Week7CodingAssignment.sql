use employees

/*show all employees born before 1965-01-01 (ordering by birth date)*/
select *
from employees e 
where birth_date < '1965-01-01'
order by e.birth_date desc 

/*show all female employees hired after 1990, I read this instruction as "after the end of 1990"*/
select *
from employees e 
where gender = 'F' and hire_date > '1990-12-31'
order by e.hire_date asc 

/*Show the first and last name of the first 50 employees whose last name starts with F*/
select e.first_name, e.last_name
from employees e 
where e.last_name like 'F%'
limit 50

/*Insert 3 new employees into the employees table. There emp_no should be 100, 101, and 102. You can choose the rest of the data.*/
insert into employees 
values
(100, '2020-01-01', 'Test', 'Test', 'F', '2021-01-01'),
(101, '2020-01-01', 'Test', 'Test', 'F', '2021-01-01'),
(102, '2020-01-01', 'Test', 'Test', 'F', '2021-01-01')

/*Change the employee's first name to Bob for the employee with the emp_no of 10023*/
update employees e 
set e.first_name = 'Bob'
where e.emp_no = 10023

/*Change all employees hire dates to 2002-01-01 whose first or last names start with P.*/
update employees e 
set e.hire_date = '2002-01-01'
where e.first_name like 'P%' or e.last_name like 'P%'

/*Delete all employees who have an emp_no less than 10000*/
delete from employees e
where e.emp_no < 10000 

/*Delete all employee who have an emp_no of 10048, 10099, 10234, and 20089.*/
delete from employees e
where e.emp_no in (10048, 10099, 10234, 20089)

/*query results (I'm not sure exacly how "last 20 rows should be interpreted so I have the last 20 by emp_no)*/
select *
from employees e 
order by emp_no desc 
limit 20

