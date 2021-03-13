-- Homework task 1 
--(emp_no, last_name, first_name, salary)

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s
ON (e.emp_no = s.emp_no);

--Homework task 2 
--(first_name, last_name, hire_date, condition: hired in 1986)

select e.first_name, e.last_name, e.hire_date
from employees as e
where hire_date >= '01/01/86';

--Homework task 3 manager of each department:
--(dept_no, dept_name, emp_no, last_name, first_name) 

select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from employees as e
join dept_manager as dm
on e.emp_no = dm.emp_no
join departments as d
on d.dept_no = dm.dept_no;


--Homework task 4 
--(emp_no, last_name, first_name, dept_name)

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join departments as d
on d.dept_no = de.dept_no;

--Homework task 5
--(first_name, last_name, sex for "Hercules", "B%")

select e.first_name, e.last_name, sex
from employees as e
where e.last_name like 'B%' AND e.first_name = 'Hercules'

--Homework task 6
--(employees in Sales, emp_no, last_name, first_name, dept_name)

select e.emp_no, e.last_name, e.first_name, d.dept_name 
from departments as d, employees as e
where d.dept_name = 'Sales';

--Homework task 7
--(Employees in Sales and Development, emp_no, last_name, first_name, dept_name)

select e.emp_no, e.last_name, e.first_name, d.dept_name 
from departments as d, employees as e
where d.dept_name = 'Sales' OR d.dept_name = 'Development';

--Homework task 8
--(Descending order of count of unique last names)

select e.last_name, count(last_name) as name_count
from employees as e
group by e.last_name
order by name_count desc;
