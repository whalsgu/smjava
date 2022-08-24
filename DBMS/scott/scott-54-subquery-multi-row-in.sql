-- 서브쿼리 : 다중행 서브쿼리(MULTI-ROW SUBQUERY)
-- 서브쿼리의 실행 결과가 여러 개 나오는 경우
-- 다중행 연산자: IN, ANY, SOME, ALL, EXISTS

-- [IN]
-- 서브쿼리가 반환한 여러 결과에서
-- 메인쿼리의 조건식과 하나라도 같으면
-- 메인쿼리 조건식을 TRUE로 반환

--------------------------------------------------------------------------------
-- 사원중에서 부서코드가 10 이거나(or) 20인 사원
SELECT * FROM emp WHERE deptno IN(10,20) ORDER BY deptno;

--------------------------------------------------------------------------------
-- 부서별 최고 급여액
SELECT deptno, max(sal) FROM emp GROUP BY deptno;

-- 부서별 최고 급여액을 받는 사원정보
SELECT * FROM emp WHERE sal in (2850, 3000, 5000);
SELECT * FROM emp WHERE sal in (SELECT max(sal) FROM emp GROUP BY deptno);

--------------------------------------------------------------------------------
-- 부서별 최저 급여액
SELECT deptno, min(sal) FROM emp GROUP BY deptno;

-- 부서별 최저 급여액을 받는 사원정보
SELECT * FROM emp WHERE sal in (800, 950, 1300);
SELECT * FROM emp WHERE sal in (SELECT min(sal) FROM emp GROUP BY deptno);

--------------------------------------------------------------------------------
-- 사원들이 소속된 부서
SELECT * FROM dept
    WHERE deptno IN (SELECT distinct deptno FROM emp);

-- 사원을 가지고 있지 않은 부서
SELECT * FROM dept
    WHERE deptno NOT IN (SELECT distinct deptno FROM emp);
    
SELECT * FROM dept 
    WHERE deptno NOT IN (SELECT deptno FROM emp GROUP BY deptno);    
