 1. 연산자 종류
 	 - () : 무조건 우선순위
 	 - 산술 연산자  (+,-,*,/) : 사칙 연산
 	 - 비교 연산자  (=, !=, <>, <, <=, >, >=)
 	 - IS NULL, LIKE, IN 
 	 	> IS NULL : 빈 값인지 확인
 	 	> LIKE : 문자열 패턴 검색 (%는 0글자 이상, _는 무조건 1글자)
 	 	> IN : 여러 값을 비교할 때 사용 (컬럼명 IN('M','F'))	 	
 	 - BETWEEN 이상값 AND 이하값 (범위 검색)
 	 - NOT : 논리 부정 (참을 거짓으로, 거짓을 참으로)
 	 - AND : 두 피연산자의 조건이 모두 같다면 참
 	 - OR : 두 피연산자 중 하나라도 같다면 참
 	 
 2. 정렬
 	- ORDER BY 컬럼명
 		> 옵션1 : ASC(기본값) 오름차순
 		> 옵션2 : DESC 내림차순
 		
3. 그룹 함수
	- 여러 개의 행을 묶어 연산하여 결과를 반환
	- 아래에서 작성할 그룹함수 외에도 다양한 그룹함수를 지원
	
4. 그룹 함수 종류(집계함수)
	- max(컬럼명) : 최대값
	- min(컬럼명) : 최소값
	- avg(컬럼명) : 평균
	- sum(컬럼명) : 합계
	- count(컬럼명) : 반환된 행의 개수

5. GROUP BY 
	- 조회된 데이터의 여러개 행을 특정 컬럼의 값을 기준으로 묶어 그룹화
	- 일반적으로 그룹함수와 함께 사용

6. HAVING 
	- 그룹 함수를 이용한 조건을 작성할 때 주로 사용
	- ex. count(*) >= 100
	- 주의 : 문법상 GROUP BY 뒤에 위치해야 함
	
7. SELECT 실행 순서
	- 맨 처음 FROM으로 태이블을 가져옴
	- 이후 아래로 쭉 실행 (모두 실행되거나, ORDER BY를 만나기 전 까지)
	- 이후 SELECT로 필요한 컬럼만 조회
	- ORDER BY가 있다면 마지막으로 실행
	- ex. FROM - WHERE - GROUP BY - HAVING - SELECT - ORDER BY
	
8. JOIN
	- 두 개 이상의 테이블의 데이터를 모두 조회할 때 사용
	- 종류 : INNER JOIN, LEFT JOIN, RIGHT JOIN, ...

9. INNER JOIN
	- ON절에서 두 테이블의 공통된 값이 있을 경우에만 조회
	
10. LEFT JOIN 
	- ON절에서 두 테이블의 공통된 값이 없어도 기준 테이블(FROM 테이블)은 무조건 조회
	- 합쳐진 테이블은 값이 없어도 NULL로 채워져서 조회됨
	
11. RIGHT JOIN
	- ON절에서 두 테이블의 공통된 값이 없어도 조인된 테이블(JOIN 테이블)은 무조건 조회
	- 기준 테이블은 값이 없어도 NULL로 채워져서 조회됨

	
12. 서브쿼리
	- SQL 쿼리 안에 포함된 또 다른 쿼리
	- 쿼리안에 쿼리가 있는 구조
	
	
13. 조건 서브쿼리	
	- WHERE 절에 사용하는 서브쿼리
	- 단일행 서브쿼리 : 서브쿼리의 실행 결과가 데이터가 1개인 서브쿼리
	- 다중행 서브쿼리 : 서브쿼리의 실행 결과가 컬럼이 2개 이상인 서브쿼리
	- 다중열 다중행 서브쿼리 : 서브쿼리의 실행 결과가 데이터가 2개 이상, 컬럼이 2개 이상인 서브쿼리

	
14. 단일행 서브쿼리
	- 결과 값의 데이터(행)가 1개인 서브쿼리
	- 단일행 비교 연산자 사용
		> 단일행 비교 연산자 : =, <=, <, >=, >, !=
		
	- 예시) SELECT first_name, last_name FROM employees
	       WHERE emp_no = (SELECT max(emp_no) FROM employees);
	       
15. 다중행 서브쿼리
	- 결과 값의 데이터(행)가 2개 이상인 서브쿼리
	- 다중행 비교 연산자 사용
		> 다중행 비교 연산자 : IN, ALL, ANY, ...
		
	- 예시) SELECT emp_no, salary FROM salaries
	       WHERE salary IN (SELECT salary FROM salaries);
	
16. 다중열 다중행 서브쿼리         
	- 결과 값의 데이터와 컬럼의 개수가 2개 이상인 서브쿼리
	
	- 예시) SELECT emp_no, title, to_date FROM titles
	       WHERE (emp_no, to_date) IN (SELECT emp_no, max(o_date) FROM titles GROUP BY emp_no);
	       
17. 인라인 뷰
	- FROM 절에 서브쿼리를 사용하는 방식
	- 서브쿼리 수행 결과가 테이블처럼 사용됨
	
	- 예시) SELECT * FROM (SELECT dept_no, count(*) AS cnt FROM dept_emp  GROUP BY dept_no) d;
	
	- 주의1) 반드시 인라인 뷰 작성 후 테이블 별칭을 지어줘야 함   
	- 주의2) 그룹 함수 사용 시 별칭을 지어줘야 메인쿼리에서 사용 가능
	- 참고) 조건은 되도록 메인 쿼리에서 작성 해주는 것이 성능상 좋음
	    
	
	[SELECT 문제]
Q1~Q3 ################################

SELECT *FROM salaries;

Q1.salaries 테이블에서 급여에 1000을 더한 값을 조회하세요.
SELECT salary + 1000 AS '1000을 더한 값' FROM salaries;

Q2. salaries 테이블에서 급여에서 세금 10%를 뺀 실수령액을 조회하세요.
SELECT salary *0.9 AS '실수령액' FROM salaries;

Q3. salaries 테이블에서 연봉을 월급으로 계산하여 조회하세요.
SELECT salary /12 AS '월급' FROM salaries;

Q4~Q9#######################################

SELECT *FROM employees;

Q4. employees 테이블에서 성별 목록을 중복 없이 조회하세요.
SELECT DISTINCT gender FROM employees;

Q5. titles 테이블에서 직급 목록을 중복 없이 조회하세요.
SELECT * FROM titles;
SELECT DISTINCT title FROM titles;

Q6. employees 테이블에서 사번이 10006인 사원을 조회하세요.
SELECT * FROM employees
WHERE emp_no = 10006;

Q7. salaries 테이블에서 급여가 60000 이상인 사원을 조회하세요.
SELECT *FROM salaries
WHERE salary >= 60000;

Q8. employees 테이블에서 입사일이 1995년 이후인 사원을 조회하세요.
SELECT * FROM employees
WHERE hire_date > '1995-01-01';

Q9. employees 테이블에서 성별이 F인 사원을 조회하세요.
SELECT * FROM employees
WHERE gender = 'F';

Q10~Q15 #################################

SELECT * FROM dept_emp;

Q10. dept_emp 테이블에서 부서 번호가 d005인 사원을 조회하세요.
SELECT * FROM dept_emp
WHERE dept_no = 'd005';

Q11. salaries 테이블에서 급여가 60000 이상이고 80000 이하인 사원을 조회하세요.
SELECT * FROM salaries
WHERE salary >= 60000 AND <= 80000;
-- Between - and - 사용가능

Q12. employees 테이블에서 성별이 M이거나 입사일이 1990년 이전인 사원을 조회하세요.
SELECT * FROM employees
WHERE gender = 'M'
or hire_date < '1990-01-01';

Q14. dept_emp 테이블에서 부서가 d001이고 현재 재직 중인 사원을 조회하세요.
SELECT * FROM dept_emp
WHERE dept_no = 'd001'
AND to_date = '9999-01-01';
-- 현재 재직중이라고 한다면 [to_date = '9999-01-01']로 작성 → employees 샘플 DB 기준으로 현재 재직 중인 사원

SELECT * FROM salaries;

Q15. salaries 테이블에서 급여가 40000 미만이거나 100000 초과인 사원을 조회하세요.
SELECT * FROM salaries
WHERE salary < 40000
OR salary > 100000;

Q16~Q21 ##############################################

Q16. employees 테이블에서 성별이 F이면서 1995년 이후 입사한 사원을 조회하세요.
SELECT * FROM employees
WHERE gender = 'F'
AND hire_date > '1995-01-01';

SELECT * FROM salaries;

Q17. salaries 테이블에서 급여가 50000부터 70000 사이인 사원을 조회하세요.
SELECT * FROM  salaries
WHERE salary BETWEEN 50000 AND 70000;

Q18. employees 테이블에서 입사일이 1990년부터 1995년 사이인 사원을 조회하세요.
SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1995-12-31';

Q19. employees 테이블에서 사번이 10010부터 10020 사이인 사원을 조회하세요.
SELECT * FROM employees
WHERE emp_no BETWEEN 10010 AND 10020;

Q20. salaries 테이블에서 급여가 80000 이상 100000 이하인 사원을 조회하세요.
SELECT * FROM  salaries
WHERE salary BETWEEN 80000 AND 100000;

Q21. dept_emp 테이블에서 부서 번호가 d003부터 d006 사이인 사원을 조회하세요.
SELECT * FROM  dept_emp
WHERE dept_no BETWEEN 'd003' AND 'd006';


Q22~Q29 #################################################

Q22. employees 테이블에서 이름이 A로 시작하는 사원을 조회하세요.
SELECT * FROM  employees
WHERE first_name LIKE 'A%';

Q23. employees 테이블에서 이름이 n으로 끝나는 사원을 조회하세요.
SELECT * FROM  employees
WHERE first_name LIKE '%n';

Q24. employees 테이블에서 이름에 'an'이 포함된 사원을 조회하세요.
SELECT * FROM  employees
WHERE first_name LIKE '%an%';

Q25. employees 테이블에서 이름이 5글자인 사원을 조회하세요.
SELECT * FROM  employees
WHERE first_name LIKE '%_____%';

Q26. employees 테이블에서 성(last_name)에 'son'이 포함된 사원을 조회하세요.
SELECT * FROM  employees
WHERE last_name LIKE '%son%';

Q27. titles 테이블에서 to_date가 NULL인 데이터를 조회하세요.
SELECT * FROM titles
WHERE to_date IS NULL;

Q28. dept_emp 테이블에서 부서가 d001, d003, d005인 사원을 조회하세요.
SELECT * FROM dept_emp
WHERE dept_no IN ('d001', 'd003','d005');

Q29. employees 테이블에서 사번이 10001, 10005, 10010인 사원을 조회하세요.
SELECT * FROM  employees
WHERE emp_no IN ('10001', '10004','10010');

Q30 #########################################################

Q30. departments 테이블에서 부서명이 Sales 또는 Development인 부서를 조회하세요.
SELECT * FROM departments
WHERE dept_name IN ('Sales','Development');

SELECT * FROM departments;
------------------------------------------------------------
INSERT INTO departments
VALUES ("d012", "Sales");

DELETE FROM departments 
WHERE dept_no = 'd012'; 

--------------------------------------------------------------
[문제]

Q1~Q5 ##################################

SELECT * FROM employees;

Q1. employees 테이블에서 사원을 사번 기준으로 오름차순 정렬하여 조회하세요.
SELECT * FROM employees
ORDER BY emp_no ASC;

Q2. employees 테이블에서 사원을 사번 기준으로 내림차순 정렬하여 조회하세요.
SELECT * FROM employees
ORDER BY emp_no DESC;

Q3. salaries 테이블에서 급여를 높은 순으로 정렬하여 조회하세요.
SELECT * FROM salaries
ORDER BY salary DESC;

Q4. employees 테이블에서 입사일 기준으로 오래된 순서대로 정렬하여 조회하세요.
SELECT * FROM employees
ORDER BY hire_date ASC; 

Q5. employees 테이블에서 성별 기준으로 정렬한 뒤 사번 기준으로 정렬하여 조회하세요.
SELECT * FROM employees
ORDER BY gender ASC, emp_no ASC;

Q6~Q14 ##################################

SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM dept_emp;
SELECT * FROM titles;

Q6. salaries 테이블에서 가장 높은 급여를 조회하세요.
SELECT max(salary) FROM salaries;
Q7. salaries 테이블에서 가장 낮은 급여를 조회하세요.
SELECT min(salary) FROM salaries;
Q8. salaries 테이블에서 평균 급여를 조회하세요.
SELECT avg(salary) FROM salaries;
Q9. salaries 테이블에서 전체 급여 합계를 조회하세요.
SELECT sum(salary) FROM salaries;

Q10. employees 테이블에서 전체 사원 수를 조회하세요.
SELECT count(*) FROM employees;

Q11. employees 테이블에서 성별별 사원 수를 조회하세요.
SELECT count(*), gender FROM employees
GROUP BY gender;

Q12. dept_emp 테이블에서 부서별 사원 수를 조회하세요.
SELECT count(*), dept_no FROM dept_emp
GROUP BY dept_no;

Q13. titles 테이블에서 직급별 사원 수를 조회하세요.
SELECT count(*), title FROM titles
GROUP BY  title;

Q14. salaries 테이블에서 사번별 평균 급여를 조회하세요.
SELECT emp_no, avg(salary) AS '평균 급여' FROM salaries
GROUP BY emp_no;

Q15~Q20 ###############################################

SELECT * FROM employees;

Q15. employees 테이블에서 입사 연도별 사원 수를 조회하세요.
SELECT  hire_date, count(*) FROM employees
GROUP BY hire_date;

Q16. 성별별 사원 수 중 100000명 이상인 경우만 조회하세요.

SELECT count(*), gender FROM employees
GROUP BY gender
HAVING count(*) >= 100000;

SELECT * FROM dept_emp;

Q17. 부서별 사원 수 중 20000명 이상인 부서만 조회하세요.
SELECT dept_no, count(*) FROM dept_emp
GROUP BY dept_no
HAVING count(*) >= 20000;

SELECT * FROM titles;

Q18. 직급별 사원 수 중 50000명 이상인 직급만 조회하세요.
SELECT title, count(*) FROM titles
GROUP BY title
HAVING count(*) >= 50000;

SELECT * FROM salaries;

Q19. 사번별 평균 급여가 80000 이상인 사원만 조회하세요.
SELECT emp_no, avg(salary) FROM salaries
GROUP BY emp_no
HAVING avg(salary) >= 80000; 


SELECT * FROM employees;

Q20. 입사 연도별 사원 수 중 10000명 이상인 연도만 조회하세요.
SELECT YEAR(hire_date), count(*) FROM employees
GROUP BY YEAR(hire_date)
HAVING count(*) >= 10000
ORDER BY count(*);
	
	
use employees;

select * from employees;
select hire_date from employees;
select emp_no, from_date, to_date from dept_manager;

select * from departments;

INSERT INTO titles 
VALUES (1, 'Engineer', now(), NULL);

SELECT * FROM titles;

insert into employees
values (1, '2000-01-01','JAESEOP','KIM','M',now());

select * from departments;
select * from employees;
select * from dept_emp;

insert into departments
values ("d011" ,"Korea IT Department");

insert into employees
values (2, '2002-01-01', 'BORA', 'SHIN', 'F', now());

insert into dept_emp
values (1, 'd010', now(), '9999-01-01');

update employees
set first_name = '홍'
where emp_no = 10001;

update employees
set last_name = '홍',
    hire_date = curdate()
where emp_no = 10002;

select * from employees
where last_name = 'Erie';

delete from employees
where emp_no = 10005;

delete from employees
where hire_date = '1993-05-12';

select * from employees;
where hire_date = '1993-05-12';

delete from employees
where last_name = 'Czap';

delete from employees
where hire_date = '1957-12-10';

create table test_member (
		member_id varchar(50) comment '아이디',
		member_pwd varchar(255) comment '비밀번호',
		member_name varchar(50) comment '이름',
		member_age tinyint comment '나이',
		member_in_date datetime comment '가입일'
		);

create table free_board (
		board_no int comment '게시판 번호',
		board_title varchar(100) comment '게시판 제목',
		board_content text comment '게시판 내용',
		board_date datetime comment '게시판 작성일',
		board_views int comment '게시판 조회수'
		);



create table ddl_alter_test (
		alter_id varchar(255) primary key,
		alter_name varchar(255),
		alter_as varchar(255) 
		);


-- 테이블명 변경
alter table ddl_alter_test rename to ddl_alter;

-- 컬럼명 변경
alter table ddl_alter rename column alter_id to alter_test_id;
alter table ddl_alter rename column alter_name to alter_test_name;

-- 삭제
alter table ddl_alter drop column alter_as;

-- 추가
alter table ddl_alter add column alter_test varchar(50);



-- 컬럼 제약 조건 추가
alter table ddl_alter add column alter_name_unique varchar(50);
alter table ddl_alter add constraint table_name_unique unique(alter_name_unique);


alter table ddl_alter drop constraint table_name_unique;

create table test_employees (
		te_employees_id int primary key,
		te_forst_name varchar(50),
		te_last_name varchar(50),
		te_salary int,
		te_department varchar(50)
		);

alter table test_employees rename to staff;

-- 테이블 구조변경
alter table staff modify te_department varchar(100);

alter table staff rename column te_last_name to Surname;

alter table staff drop column te_forst_name;

alter table staff add column te_hire_date datetime;

alter table staff add constraint te_salary_check unique (te_salary);

drop table ddl_alter; 

SELECT emp_no, salary /12 AS '월급' FROM salaries;

###############################################################

Q1. 사원의 사번과 급여를 함께 조회하세요.

SELECT e.emp_no, s.salary
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no;

Q2. 사원과 부서 정보를 함께 조회하세요.

SELECT e.emp_no, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no;

Q3. 현재 재직 중인 사원의 이름과 부서를 조회하세요.

SELECT e.first_name, d.dept_name, de.to_date
FROM employees e
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01';

Q4. 급여가 80000 이상인 사원의 이름과 급여를 조회하세요. 
SELECT e.first_name, s.salary
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no
WHERE s.salary >= 80000;

Q5. 사원의 이름과 급여를 급여가 높은 순으로 조회하세요.
SELECT e.first_name, s.salary
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no
ORDER BY s.salary DESC;


Q6. 부서별 사원 수를 조회하세요.

SELECT d.dept_name, COUNT(*) AS cnt
FROM departments d
INNER JOIN dept_emp de ON d.dept_no = de.dept_no
GROUP BY d.dept_name;


Q7. 부서별 사원 수가 20000명 이상인 부서만 조회하세요.
SELECT d.dept_name, COUNT(*) AS cnt
FROM departments d
INNER JOIN dept_emp de ON d.dept_no = de.dept_no
GROUP BY d.dept_name
HAVING COUNT(*) >= 20000;


Q8. 성별이 F인 사원의 이름과 부서를 조회하세요.
SELECT e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE e.gender = 'F';


Q9. 입사일이 1995년 이후인 사원의 이름과 부서를 조회하세요.

SELECT e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE e.hire_date > '1995-01-01';


Q10. 부서별 평균 급여를 조회하세요.

SELECT d.dept_name, AVG(s.salary) AS avg_salary
FROM departments d
INNER JOIN dept_emp de ON d.dept_no = de.dept_no
INNER JOIN salaries s ON de.emp_no = s.emp_no
GROUP BY d.dept_name;

Q11. 현재 재직 중인 사원의 이름, 부서, 급여를 급여 내림차순으로 조회하세요.
SELECT e.first_name, d.dept_name, s.salary
FROM employees e
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
INNER JOIN salaries s ON e.emp_no = s.emp_no
WHERE de.to_date = '9999-01-01'
ORDER BY s.salary DESC;

Q12. 부서별 평균 급여가 70000 이상인 부서만 조회하세요.

SELECT d.dept_name, AVG(s.salary) AS avg_salary
FROM departments d
INNER JOIN dept_emp de ON d.dept_no = de.dept_no
INNER JOIN salaries s ON de.emp_no = s.emp_no
GROUP BY d.dept_name
HAVING AVG(s.salary) >= 70000;

Q13. 직급별 사원 수를 조회하세요.

SELECT t.title, COUNT(*) AS cnt
FROM titles t
INNER JOIN employees e ON t.emp_no = e.emp_no
GROUP BY t.title;

Q14. 급여 상위 사원의 이름, 직급, 급여를 조회하세요.

SELECT e.first_name, t.title, s.salary
FROM employees e
INNER JOIN titles t ON e.emp_no = t.emp_no
INNER JOIN salaries s ON e.emp_no = s.emp_no
ORDER BY s.salary DESC;

--------------------------------------------------------- LEFT JOIN
Q15. 모든 사원과 부서 정보를 조회하세요 (부서가 없어도 포함).

SELECT e.emp_no, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no;

Q16. 부서 배정이 없는 사원을 조회하세요.

SELECT e.emp_no, e.first_name
FROM employees e
LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
WHERE de.emp_no IS NULL;
--------------------------------------------------------- RIGHT JOIN
Q17. 모든 부서를 기준으로 사원 정보를 조회하세요.

SELECT d.dept_name, e.emp_no
FROM employees e
RIGHT JOIN dept_emp de ON e.emp_no = de.emp_no
RIGHT JOIN departments d ON de.dept_no = d.dept_no;

Q18. 모든 급여 정보를 기준으로 사원 정보를 조회하세요.

SELECT s.salary, e.emp_no
FROM employees e
RIGHT JOIN salaries s ON e.emp_no = s.emp_no;	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	