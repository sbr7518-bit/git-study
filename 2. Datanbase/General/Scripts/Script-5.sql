

SELECT * FROM employees
ORDER BY emp_no DESC;

SELECT * FROM salaries
ORDER BY salary DESC;

SELECT * FROM employees
ORDER BY hire_date ASC;

SELECT * FROM employees
ORDER BY gender ASC, emp_no ASC;

SELECT max(salary) FROM salaries;
SELECT min(salary) FROM salaries;
SELECT avg(salary) FROM salaries;
SELECT sum(salary) FROM salaries;
SELECT count(emp_no) FROM employees;
SELECT count(*), gender FROM employees
GROUP BY gender;
SELECT dept_no, count(*) AS '부서별 사원수' FROM dept_emp
GROUP BY dept_no;

SELECT title, count(*) AS '직급별 사원수' FROM titles
GROUP BY title;

SELECT emp_no, avg(salary) FROM salaries
GROUP BY emp_no;

SELECT hire_date, COUNT(*) AS '연도별 사원수' FROM employees
GROUP BY hire_date; 

SELECT gender, count(*) AS '100000 이상' FROM employees
GROUP BY gender
HAVING count(*) >= 100000;

SELECT dept_no, count(*) FROM dept_emp
GROUP BY dept_no
HAVING count(*) >= 20000;

SELECT title, count(*) FROM titles
GROUP BY title
HAVING count(*) >= 50000;

SELECT emp_no, avg(salary) AS '평균급여' FROM salaries
GROUP BY emp_no
HAVING avg(salary) >= 80000;

SELECT YEAR(hire_date), count(*) FROM employees
GROUP BY YEAR(hire_date)
HAVING count(*) >= 10000;
























