-- 서브쿼리(Sub-Query)
-- SELECT문 안에 SELECT문 있는 경우
-- 메인쿼리: 서브쿼리의 결과를 가지고 쿼리
-- 서브쿼리: 
--   1. 메인쿼리의 대상
--   2. 서브쿼리는 메인쿼리와 자료형과 칼럼의 갯수가 같아야 한다.
--   3. 결과의 행 수는 메인쿼리의 연산자 종류와 호환 가능해야 한다.
--      (결과가 단일행, 다중행)


SELECT * FROM emp;

-- CLARK의 급여
SELECT empno, ename, sal as "급여" FROM emp WHERE empno = 7782; -- 급여: 2450

-- CLARK의 급여(2450)보다 더 많은 급여를 받는 사원
SELECT * FROM emp WHERE sal > 2450;

SELECT sal FROM emp WHERE empno > 7782;

-- 에러: 다중행이 리턴
-- SELECT * FROM emp WHERE sal > (SELECT sal FROM emp WHERE empno > 7782);

-- 서브쿼리의 결과: 단일행과 단일 칼럼
SELECT * FROM emp WHERE sal > (SELECT sal FROM emp WHERE empno = 7782);

-- 입사일자 순으로 정렬
SELECT * FROM emp ORDER BY hiredate;

-- [문제1]
-- TURNER의 입사일자: 81/09/08
-- TURNER 보다 빨리 입사한 사원
SELECT * FROM emp WHERE hiredate < '81/09/08'; -- 6명
SELECT * FROM emp WHERE to_date(hiredate, 'YY/MM/DD') < to_date('81/09/08', 'YY/MM/DD'); -- 6명
SELECT empno, hiredate FROM emp WHERE ename = 'TURNER';
SELECT * FROM emp WHERE hiredate < (SELECT hiredate FROM emp WHERE ename = 'TURNER');
SELECT * FROM emp WHERE hiredate < (SELECT hiredate FROM emp WHERE empno = 7844);

-- [문제2]
-- TURNER 보다 늦게 입사한 사원(TURNER를 포함)
SELECT * FROM emp 
    WHERE hiredate >= (SELECT hiredate FROM emp WHERE empno = 7844)
    ORDER BY hiredate;

-- [문제3] 
-- 부서코드가 20에 속한 사원중에서
-- TURNER 보다 높은 급여를 받는
-- 사원 정보와 소속 부서 정보를 출력
SELECT * FROM emp ORDER BY deptno, sal;

SELECT * FROM emp e, dept d
    WHERE e.deptno = 20
    AND e.deptno = d.deptno
    AND e.sal > (SELECT sal FROM emp WHERE empno = 7844)
    ORDER BY e.sal;

-- [문제4] 
-- 부서코드가 10, 20에 속한 사원중에서
-- 전체 사원의 평균 급여보다 높은 급여를 받는
-- 사원 정보와 소속 부서 정보를 출력
-- 평균급여
SELECT avg(sal) FROM emp; -- 평균급여: 2077

SELECT * FROM emp e, dept d
    WHERE e.deptno IN(10, 20)
    AND e.deptno = d.deptno
    AND e.sal > (SELECT avg(sal) FROM emp)
    ORDER BY e.sal;

