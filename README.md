# sql_challenge
UMN Data Analytics Bootcamp SQL Homework 6

Tools Used:
 * PGAdmin
 * SQL
 * SQLAlchemy
 * Python
 * Matplotlib
 * Jupyter Notebook

## Assignment Overview

* Inspect the six given CSVs and design an ERD of the tables.

* Create a table schema for each file with primary and foreign keys

* Import each CSV into the appropriate table in PGAdmin to construct a database.

* Run the following in PGAdmin with SQL commands:

    1. List the following details of each employee: employee number, last name, first name, sex, and salary.

    2. List first name, last name, and hire date for employees who were hired in 1986.

    3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

    4. List the department of each employee with the following information: employee number, last name, first name, and department name.

    5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

    6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

    7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

    8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

* In a Jupyter Notebook, create an engine using sqlalchemy and create a visual analysis of the data with a histogram of salary ranges and a bar chart of average salary by title.