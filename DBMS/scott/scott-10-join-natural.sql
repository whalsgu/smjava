-- 표준 SQL: ISO/ANSI(SQL-99)

-- 자연조인(natural join)
-- 대상이 되는 두 테이블에 이름과 자료형이 같은 칼럼을 기준으로 등가조인(equal join)을 한다.
-- 테이블 별칭을 붙여서 칼럼명을 명시할 수 없다.
-- 조인되는 칼럼에 테이블명을 붙일 수 없다.

-- NATURAL JOIN    
SELECT empno, ename, job, deptno, dname, loc
    FROM emp natural join dept
    ORDER BY 1,2;
    
-- JOIN ~ USING
-- 조인되는 칼럼은 동일한 이름과 타입이어야 한다.
-- 조인되는 칼럼은 테이블 식별자를 지정할 수 없다.
SELECT e.empno, e.ename, e.job, deptno, d.dname, d.loc
    FROM emp e join dept d using(deptno)
    ORDER BY 1,2;
    
-- 테이블 : emp, dept2    
-- 조인되는 칼럼: empno, deptno
SELECT empno, deptno, e.ename, e.job, d.dname, d.loc
    FROM emp e join dept2 d using(empno, deptno)
    ORDER BY 1,2;
    
    
-- JOIN ~ ON
-- 조인 조건을 명시
-- 사원의 소속 부서코드를 조인하여 부서정보 확인
SELECT e.empno, e.ename, e.job, e.deptno, d.deptno, d.dname, d.loc
    FROM emp e join dept d on(e.deptno = d.deptno)
    ORDER BY 1,2;
    
-- 소속되지 않은 부서 정보 조인: e.deptno != d.deptno
SELECT e.empno, e.ename, e.job, e.deptno, d.deptno, d.dname, d.loc
    FROM emp e join dept d on(e.deptno != d.deptno)
    ORDER BY 1,2;

-- 소속되지 않은 부서 정보 조인하여 부정 : 소속된 부서
-- not e.deptno != d.deptno
SELECT e.empno, e.ename, e.job, e.deptno, d.deptno, d.dname, d.loc
    FROM emp e join dept d on(not (e.deptno != d.deptno))
    ORDER BY 1,2;
    
-- 부서가 위치한 장소가 'CHICAGO', 'NEW YORK'인 부서만 조인
SELECT e.empno, e.ename, e.job, e.deptno, d.deptno, d.dname, d.loc
    FROM emp e join dept d on(d.loc IN('CHICAGO', 'NEW YORK') AND e.deptno = d.deptno)
    ORDER BY 1,2;
    
