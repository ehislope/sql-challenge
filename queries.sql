--List the following details of each employee: (employee number, last name, first name, sex,) - employees table and 
	--(salary)- salaries table. Join Employees table with Salaries table. - order by employee number - left join

-- Join employees with salaries
SELECT employees.emp_no,
  employees.last_name,
  employees.first_name,
  employees.sex,
  salaries.salary
FROM employees
LEFT JOIN salaries ON
employees.emp_no = salaries.emp_no
ORDER BY emp_no ASC;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%/%/1986';

--List the manager of each department with the following information: 
	--department number, department name, the manager's employee number, last name, first name. 
	
SELECT departments.dept_no,
  departments.dept_name,
  dept_manager.emp_no,
  employees.last_name,
  employees.first_name
FROM dept_manager
INNER JOIN departments ON
dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON
dept_manager.emp_no = employees.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no,
 employees.last_name,
 employees.first_name,
 departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
ORDER BY emp_no;
--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B." 
-- use Where to find first name and LIKE to find last name - all in employee table.

--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name. Join employee table to dept_emp by emp_no. then join
--dpartments by dept_no to find "sales department".

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name. - Join employee table to dept_emp by emp_no. then join
--departments by dept_no to find "sales department and Development".

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
--select, count, group, order