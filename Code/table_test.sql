-- dropping from sql_hw_test to correct root code

drop table "Employees";
drop table "Departments";
drop table "Dept_manager";
drop table "Dept_emp";
drop table "Title";
drop table "Salaries";


select * from "Title";
select * from "Employees";
select * from "Salaries";
select * from "Departments";
select * from "Dept_manager";
select * from "Dept_emp";

-- Homework task 1 
--(emp_no, last_name, first_name, salary)
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" as e
JOIN "Salaries" as s
ON (e.emp_no = s.emp_no);

--Homework task 2 
--(first_name, last_name, hire_date, condition: hired in 1986)
select e.first_name, e.last_name, e.hire_date
from "Employees" as e
where hire_date >= '01/01/86'



--Homework task 3 manager of each department:
--(dept_no, dept_name, emp_no, last_name, first_name) 
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from "Employees" as e
join "Dept_emp" as de
on e.emp_no = de.emp_no
join "Departments" as d
on d.dept_no = de.dept_no


--Homework task 4 
--(emp_no, last_name, first_name, dept_name)
