use employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' GROUP BY last_name;

SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' GROUP BY first_name, last_name;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT last_name, COUNT(*) AS name_count FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name ORDER BY name_count;

SELECT gender, COUNT(*) AS name_count FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;
