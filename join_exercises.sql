USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
    JOIN dept_emp as de ON de.emp_no = e.emp_no
    JOIN departments as d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
  AND e.emp_no = 10001;


SELECT CONCAT (e.first_name, ' ', e.last_name) AS department_manager, d.dept_name
FROM employees as e
    JOIN dept_emp as employee_no ON employee_no.emp_no = e.emp_no
    JOIN dept_manager as manager ON manager.emp_no = employee_no.emp_no
    JOIN departments as d ON manager.dept_no = d.dept_no
LIMIT 10;


SELECT CONCAT (e.first_name, ' ', e.last_name) AS department_manager, d.dept_name
FROM employees as e
    JOIN dept_emp as employee_no ON employee_no.emp_no = e.emp_no
    JOIN dept_manager as manager ON manager.emp_no = employee_no.emp_no
    JOIN departments as d ON manager.dept_no = d.dept_no
WHERE e.gender = 'F'
LIMIT 10;

SELECT *
FROM departments
WHERE dept_name = 'Customer Service'
LIMIT 10;


SELECT title, COUNT(titles.emp_no)
FROM titles
    JOIN dept_emp AS de
        ON titles.emp_no = de.emp_no
    JOIN departments AS dept
ON de.dept_no = dept.dept_no
WHERE dept.dept_name = 'Customer Service'
  AND titles.to_date = '9999-01-01'
  AND de.to_date = '9999-01-01'
GROUP BY titles.title;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS department_manager, d.dept_name
FROM employees as e
         JOIN dept_emp as employee_no
              ON employee_no.emp_no = e.emp_no
         JOIN dept_manager as manager
              ON manager.emp_no = employee_no.emp_no
         JOIN departments as d
              ON manager.dept_no = d.dept_no
WHERE manager.to_date = '9999-01-01'
ORDER BY dept_name;


SELECT COUNT(*)
FROM current_dept_emp
WHERE dept_no = 'd009'