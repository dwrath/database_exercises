USE employees;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
         JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' ORDER BY dept_name;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
         JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F' ORDER BY dept_name;

SELECT t.title, COUNT(*) AS Total
FROM employees e
         JOIN titles t ON e.emp_no = t.emp_no
WHERE t.to_date = '9999-01-01'
GROUP BY t.title
ORDER BY Total DESC;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM departments d
         JOIN dept_manager dm ON d.dept_no = dm.dept_no
         JOIN employees e ON dm.emp_no = e.emp_no
         JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;


