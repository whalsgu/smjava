-- 그룹함수 : count, avg, min, max, sum
-- 그룹함수를 통해서 나온 결과를 묶어서 처리
-- GROUP BY

-- 단일행, 그룹행 결합해서 기술할 수 없다.
-- SELECT deptno, job, sum(sal) FROM emp ORDER BY deptno; 


-- 부서별 사원들의 평균 급여액
SELECT * from dept;
SELECT avg(sal) FROM emp WHERE deptno = 10;
SELECT avg(sal) FROM emp WHERE deptno = 20;
SELECT avg(sal) FROM emp WHERE deptno = 30;
SELECT avg(sal) FROM emp WHERE deptno = 40;

-- 집합연산자(합집합)
SELECT '10' as deptno, trunc(avg(sal)) FROM emp WHERE deptno = 10
UNION ALL
SELECT '20' as deptno, trunc(avg(sal)) FROM emp WHERE deptno = 20
UNION ALL
SELECT '30' as deptno, trunc(avg(sal)) FROM emp WHERE deptno = 30
UNION ALL
SELECT '40' as deptno, trunc(avg(sal)) FROM emp WHERE deptno = 40;

-- GROUP BY column
-- 그룹화할 칼럼을 지정
-- 여러 칼럼을 지정 가능

-- 부서별 사원들의 평균 급여액
SELECT deptno, trunc(avg(sal)) FROM emp GROUP BY deptno ORDER BY deptno;

-- 부서별, 직책별 평균 급여액
SELECT deptno, job, sal FROM emp ORDER BY deptno;
SELECT deptno, job, trunc(avg(sal)) FROM emp GROUP BY deptno, job ORDER BY deptno;

-- 부서별 총 급여액
SELECT deptno, sum(sal) FROM emp GROUP BY deptno ORDER BY deptno;

-- 부서별, 직책별 총 급여액
SELECT deptno, job, sum(sal) FROM emp GROUP BY deptno, job ORDER BY deptno;

-- [문제]
-- 부서별 사원들의 총수
SELECT deptno, count(deptno) FROM emp GROUP BY deptno ORDER BY deptno;

-- 부서별 사원들의 총수, 급여총액, 평균급여액
SELECT deptno, count(deptno), sum(sal), avg(sal) FROM emp GROUP BY deptno ORDER BY deptno;

-- 부서별 사원들의 급여총액, 평균급여액, 최고급여액, 최저급여액
SELECT deptno, avg(sal), max(sal), min(sal) FROM emp GROUP BY deptno ORDER BY deptno;
