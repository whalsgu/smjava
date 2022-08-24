-- 다중열 서브쿼리(Multiple Column Sub-Query)
-- 검색 칼럼이 여러개인 경우, 복수열의 서브쿼리

-- 부서별 최고 급여액
SELECT deptno, max(sal) FROM emp GROUP BY deptno;

-- 다중열 서브쿼리
SELECT * FROM emp
    WHERE (deptno, sal) IN (SELECT deptno, max(sal) FROM emp GROUP BY deptno);
    
-- 개별적으로 쿼리    
SELECT * FROM emp
    WHERE deptno IN (SELECT deptno FROM emp GROUP BY deptno)
    AND sal IN (SELECT max(sal) FROM emp GROUP BY deptno);
    
SELECT * FROM emp WHERE sal IN (SELECT max(sal) FROM emp GROUP BY deptno);