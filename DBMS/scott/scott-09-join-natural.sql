-- 표준 SQL: ISO/ANSI(SQL-99)

-- 자연조인(natural join)
-- 대상이 되는 두 테이블에 이름과 자료형이 같은 칼럼을 기준으로 등가조인(equal join)을 한다.
-- 테이블 별칭을 붙여서 칼럼명을 명시할 수 없다.
-- 조인되는 칼럼에 테이블명을 붙일 수 없다.

-- 오류: emp.deptno
-- 조인되는 칼럼은 앞에 테이블명을 명시할 수 없다.
-- SELECT empno, ename, emp.job, emp.deptno, dname, loc
-- FROM emp natural join dept
-- ORDER BY 1,2;

-- 등가조인(equal join), 동등조인, 내부조인, 단순조인
SELECT * FROM emp e, dept d 
    WHERE e.deptno = d.deptno 
    ORDER BY e.empno;
    
-- NATURAL JOIN    
SELECT empno, ename, job, deptno, dname, loc
    FROM emp natural join dept
    ORDER BY 1,2;
    
SELECT '[natural join]' as title, empno, ename, job, deptno, dname, loc
    FROM emp natural join dept
    ORDER BY 1,2;    

-- 테이블 dept2에 empno 칼럼을 추가
-- 자연조인으로 일치되는 칼럼이 2개인 경우
CREATE TABLE dept2 AS
    SELECT deptno, dname, loc, empno
    FROM emp natural join dept;
    
DESC dept2;

-- 자연조인 : join emp, dept2
SELECT empno, ename, job, deptno, dname, loc
    FROM emp natural join dept2
    ORDER BY 1,2;    
    
-- 등가조인 : join emp, dept2
SELECT * FROM emp e, dept2 d 
    WHERE e.deptno = d.deptno 
    AND e.empno = d.empno
    ORDER BY e.empno;
    
