USE employees;

SHOW TABLES;

SELECT first_name, hire_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_emp
    WHERE hire_date = '1990-10-22'
);

SELECT first_name, last_name
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
);

SELECT * FROM titles
WHERE emp_no IN (
    select emp_no from employees where first_name = 'Aamod'
);

SELECT first_name, last_name
FROM employees
WHERE emp_no IN(
    SELECT emp_no
    FROM dept_manager
    WHERE gender = 'f' AND to_date > now()
);

SELECT first_name, last_name
FROM employees
WHERE emp_no IN(
    SELECT emp_no
    FROM salaries
    WHERE salary > 155555
);



