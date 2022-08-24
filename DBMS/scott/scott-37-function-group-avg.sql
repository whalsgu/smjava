-- 그룹함수: 다중행 함수
-- 평균값을 구하는 함수
-- AVG(column)

-- 전체 사원의 평균 급여?
SELECT avg(sal) FROM emp;

-- 부서가 30인 사원들의 평균 급여
SELECT avg(sal) FROM emp WHERE deptno = 30;
SELECT trunc(avg(sal)) FROM emp WHERE deptno = 30;      -- 버림(소숫점이하 버림)
SELECT trunc(avg(sal), 2) FROM emp WHERE deptno = 30;   -- 버림(소숫점이하 2자리까지 표시)
SELECT round(avg(sal), 2) FROM emp WHERE deptno = 30;   -- 반올림(소숫점이하 3자리에서 반올림)

-- 옵션: distinct, all
SELECT ename, sal FROM emp WHERE deptno = 30;
SELECT avg(sal) FROM emp WHERE deptno = 30;
SELECT avg(all sal) FROM emp WHERE deptno = 30;
SELECT avg(distinct sal) FROM emp WHERE deptno = 30;
SELECT trunc(avg(sal)), trunc(avg(all sal)), avg(distinct sal) FROM emp WHERE deptno = 30;



