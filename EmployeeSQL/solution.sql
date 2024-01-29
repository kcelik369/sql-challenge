-- Solutions to the eight "Data Analysis" questions;
-- each query answers one question from 1 to 8 (descending, respectively)
SELECT e.emp_no, last_name, first_name, sex, salary FROM employees AS e 
	JOIN salaries AS s ON s.emp_no = e.emp_no;
	
SELECT first_name, last_name, hire_date FROM employees WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT dm.dept_no, dept_name, dm.emp_no, last_name, first_name FROM dept_manager AS dm 
	JOIN employees AS e ON e.emp_no = dm.emp_no
	JOIN departments AS d ON d.dept_no = dm.dept_no;

SELECT de.dept_no, de.emp_no, last_name, first_name, dept_name FROM dept_emp AS de 
	JOIN employees AS e ON e.emp_no = de.emp_no
	JOIN departments AS d ON d.dept_no = de.dept_no;
	
SELECT first_name, last_name, sex FROM employees 
	WHERE first_name = 'Hercules' AND LEFT(last_name, 1) = 'B';
	
SELECT de.emp_no, last_name, first_name FROM dept_emp AS de 
	JOIN employees AS e ON e.emp_no = de.emp_no
	JOIN departments AS d ON d.dept_no = de.dept_no
	WHERE dept_name = 'Sales';
	
SELECT de.emp_no, last_name, first_name, dept_name FROM dept_emp AS de 
	JOIN employees AS e ON e.emp_no = de.emp_no
	JOIN departments AS d ON d.dept_no = de.dept_no
	WHERE dept_name = 'Sales' OR dept_name = 'Development';

SELECT last_name, COUNT(last_name) AS last_ct FROM employees GROUP BY last_name ORDER BY last_ct DESC;