-- 서브쿼리 : 다중행 서브쿼리(MULTI-ROW SUBQUERY)
-- 서브쿼리의 실행 결과가 여러 개 나오는 경우
-- 다중행 연산자: IN, ANY, SOME, ALL, EXISTS

-- [ANY, SOME]
-- 서브쿼리가 반환한 여러 결과에서
-- 메인쿼리의 조건식과 하나라도 같으면
-- 메인쿼리 조건식을 TRUE로 반환

-- 부서별 최고 급여액
SELECT deptno, max(sal) FROM emp GROUP BY deptno;

-- [ANY]
-- 각 부서별 최고 급여와 동일한 급여를 받는 사원 정보
SELECT * FROM emp
    WHERE sal = ANY (SELECT max(sal) FROM emp GROUP BY deptno);
    
-- [SOME]
-- 각 부서별 최고 급여와 동일한 급여를 받는 사원 정보
SELECT * FROM emp
    WHERE sal = SOME (SELECT max(sal) FROM emp GROUP BY deptno);
    
-- 부서코드(30)의 최고 급여를 받는 사람보다 적은 급여를 받는 모든 사원정보
-- 최고급여액(2850) 보다 적은 급여를 받는 사원
SELECT * 
    FROM emp
    WHERE sal < ANY (SELECT sal FROM emp WHERE deptno = 30)
    ORDER BY sal desc, empno;
    
SELECT * 
    FROM emp
    WHERE sal < SOME (SELECT sal FROM emp WHERE deptno = 30)
    ORDER BY sal desc, empno;
    
-- 그룹함수: 
-- max(sal)보다 적은 급여를 받는 사원
SELECT * 
    FROM emp
    WHERE sal < (SELECT max(sal) FROM emp WHERE deptno = 30)
    ORDER BY sal desc, empno;

--------------------------------------------------------------------------------
-- 부서코드(30)의 최저 급여를 받는 사람보다 많은 급여를 받는 모든 사원정보
-- 최저급여액(?) 보다 많은 급여를 받는 사원
-- 최저금여액 : 950보다 많은 급여를 받는 사원

SELECT * 
    FROM emp
    WHERE sal > ANY (SELECT sal FROM emp WHERE deptno = 30)
    ORDER BY sal asc, empno;
    
SELECT * 
    FROM emp
    WHERE sal > SOME (SELECT sal FROM emp WHERE deptno = 30)
    ORDER BY sal desc, empno;
    
-- 그룹함수: 
-- min(sal)보다 적은 급여를 받는 사원 : 950
SELECT * 
    FROM emp
    WHERE sal > (SELECT min(sal) FROM emp WHERE deptno = 30)
    ORDER BY sal desc, empno;
