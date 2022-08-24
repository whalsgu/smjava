-- 서브쿼리 : 다중행 서브쿼리(MULTI-ROW SUBQUERY)
-- 서브쿼리의 실행 결과가 여러 개 나오는 경우
-- 다중행 연산자: IN, ANY, SOME, ALL, EXISTS

-- [ALL]
-- 서브쿼리가 반환한 여러 결과가
-- 메인쿼리와 조건식 사용한 결과와 모두(ALL) 같으면 
-- 메인쿼리 조건식을 TRUE로 반환

--------------------------------------------------------------------------------
-- 부서코드가 30인 사원의 급여 정보
SELECT * FROM emp WHERE deptno = 30 ORDER BY sal;

-- 부서코드가 30인 사원들의 최소 급여보다 더 적은 급여를 받는 사원 정보
-- JAMES : 950
SELECT * FROM emp 
    WHERE sal < ALL (SELECT sal FROM emp WHERE deptno = 30)
    ORDER BY sal, empno;
    
-- [문제] 그룹함수로 전환
-- 부서코드가 30인 사원들의 최소 급여보다 더 적은 급여를 받는 사원 정보
SELECT * FROM emp 
    WHERE sal < (SELECT min(sal) FROM emp WHERE deptno = 30)
    ORDER BY sal, empno;

--------------------------------------------------------------------------------
-- 부서코드가 30인 사원들의 최고 급여보다 더 많은 급여를 받는 사원 정보
-- BLAKE : 2850
SELECT * FROM emp 
    WHERE sal > ALL (SELECT sal FROM emp WHERE deptno = 30)
    ORDER BY sal, empno;

-- [문제] 그룹함수로 전환
-- 부서코드가 30인 사원들의 최고 급여보다 더 많은 급여를 받는 사원 정보
SELECT * FROM emp 
    WHERE sal > (SELECT max(sal) FROM emp WHERE deptno = 30)
    ORDER BY sal, empno;


--------------------------------------------------------------------------------
-- 부서코드가 30인 사원들과 동일한 급여를 받는 사원
-- 없다: 한 사람의 사원의 급여는 하나다.
-- 권장하지 않음
SELECT * FROM emp 
    WHERE sal = ALL (SELECT sal FROM emp WHERE deptno = 30)
    ORDER BY sal, empno;

--------------------------------------------------------------------------------
-- 급여를 1300 받는 사원
-- 결과 행이 하나인 경우를 만족하는 경우는 있을 수 있다.
-- 권장하지 않음
SELECT * FROM emp 
    WHERE sal = ALL (SELECT sal FROM emp WHERE sal = 1300)
    ORDER BY sal, empno;

