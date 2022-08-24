-- 그룹함수: 다중행 함수
-- 최대값, 최솟값
-- max(column) : 최대값
-- min(column) : 최솟값

-- 가장 급여를 많이 받는 사원의 급여액
SELECT max(sal) FROM emp;

-- 가장 급여를 적게 받는 사원의 급여액
SELECT min(sal) FROM emp;

-- 가장 급여을 적게 받는 사원과 가장 많이 받는 사원의 급여액
SELECT min(sal), max(sal) FROM emp;

-- 입사일이 가장 오래된 사원의 입사일자
SELECT min(hiredate) FROM emp;

-- 입사일이 가장 최근인 사원의 입사일자
SELECT max(hiredate) FROM emp;

SELECT min(hiredate), max(hiredate) FROM emp;

SELECT min(hiredate), max(hiredate) FROM emp WHERE deptno = 20;
