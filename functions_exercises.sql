USE employees;

SELECT CONCAT(first_name,' ', last_name) FROM employees WHERE first_name LIKE 'E%';

SELECT * FROM employees WHERE YEAR(hire_date) BETWEEN 1990 AND 1999 AND MONTH(birth_date) = 12 AND DAY(birth_date) = 25 ORDER BY birth_date, hire_date DESC;

SELECT DATEDIFF(NOW(), hire_date) AS days_worked FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25
  AND hire_date BETWEEN '1990-01-01' AND '1999-12-31';


