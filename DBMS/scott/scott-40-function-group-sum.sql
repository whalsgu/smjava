-- 그룹함수: 다중행 함수
-- 데이터의 합
-- sum(column)

-- 전체 사원의 급여 총액
SELECT sum(sal) FROM emp;

SELECT sum(sal) FROM emp WHERE deptno = 10;
SELECT sum(sal) FROM emp WHERE deptno = 20;
SELECT sum(sal) FROM emp WHERE deptno = 30;

SELECT '10' as dept, count(sal), sum(sal) FROM emp WHERE deptno = 10
UNION ALL
SELECT '20' as dept, count(sal), sum(sal) FROM emp WHERE deptno = 20
UNION ALL
SELECT '30' as dept, count(sal), sum(sal) FROM emp WHERE deptno = 30;