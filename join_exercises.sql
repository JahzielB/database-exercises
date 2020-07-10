USE employees;

SELECT dept_name AS 'Department Name', CONCAT(e.first_name,' ',e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager as dm
ON e.emp_no = dm.emp_no
JOIN departments as d
ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' ORDER BY dept_name;

SELECT dept_name AS 'Department Name', CONCAT(e.first_name,' ',e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager as dm
ON e.emp_no = dm.emp_no
JOIN departments as d
ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F' ORDER BY dept_name;

SELECT title AS 'Title', COUNT(*) AS 'Count'
FROM employees as e
JOIN titles as t
ON e.emp_no = t.emp_no
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_no = 'd009' AND t.to_date = '9999-01-01' GROUP BY title;

SELECT dept_name AS 'Department Name', CONCAT(e.first_name,' ',e.last_name) AS 'Name', salary AS 'Salary'
FROM employees as e
JOIN dept_manager as dm
ON e.emp_no = dm.emp_no
JOIN departments as d
ON dm.dept_no = d.dept_no
JOIN salaries AS s
ON e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01' and dm.to_date = '9999-01-01' ORDER BY dept_name;