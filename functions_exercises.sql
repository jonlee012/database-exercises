USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

SELECT * FROM employees
WHERE first_name in ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY  last_name, first_name;

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;

SELECT * FROM employees WHERE last_name  LIKE 'E%' ORDER BY emp_no desc;

SELECT * FROM employees WHERE hire_date  LIKE '1990%';

SELECT * FROM employees WHERE birth_date LIKE  '%12-25';

SELECT * FROM employees WHERE last_name  LIKE '%Q%';

SELECT * FROM employees WHERE first_name  = 'Irena'
                           OR first_name = 'Vidya' OR first_name = 'Maya';


SELECT * FROM employees WHERE (first_name  = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya') and gender = 'M';

SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE 'E%E';


SELECT CONCAT(first_name, ' ', last_name) AS name,
       CONCAT('They have been working at the company for ', DATEDIFF(NOW(), hire_date) / 365, ' years') AS years_at_company_message
FROM employees WHERE birth_date like '%12-25'
                 AND hire_date like '1990%' ORDER BY birth_date, hire_date DESC;

DESCRIBE employees;
SELECT * FROM employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%QU%';