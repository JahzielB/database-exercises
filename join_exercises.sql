USE employees;

SELECT dept_name AS 'Department Name', CONCAT(e.first_name,' ',e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager as dm
ON e.emp_no = dm.emp_no
JOIN departments as d
ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01';

SELECT dept_name AS 'Department Name', CONCAT(e.first_name,' ',e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager as dm
ON e.emp_no = dm.emp_no
JOIN departments as d
ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';