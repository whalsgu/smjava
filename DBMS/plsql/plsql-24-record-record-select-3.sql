/*
레코드(RECORD)형 안에 또 다른 레코드형 
--------------------------------------------------------------------------------
레코드(RECORD) : 자료형이 다른 여러 자료형들의 모음
TYPE 레코드이름 IS RECORD (
    변수이름 자료형 NOT NULL := 값 또는 표현식
    변수이름 레코드형
)
--------------------------------------------------------------------------------
사원 테이블(EMP)안에 부서정보를 가지는 관계
--------------------------------------------------------------------------------
*/
SET SERVEROUTPUT ON;

DESC EMP;

DECLARE
    TYPE REC_DEPT IS RECORD( -- 부서 테이블
        deptno DEPT.DEPTNO%TYPE,  -- 부서코드
        dname DEPT.DNAME%TYPE,    -- 부서이름
        loc DEPT.LOC%TYPE         -- 부서위치
    );
   
    TYPE REC_EMP IS RECORD(
        empno EMP.EMPNO%TYPE,   -- 사원코드
        ename EMP.ENAME%TYPE,   -- 사원이름
        dept REC_DEPT           -- 부서정보
        -- dept DEPT%ROWTYPE           -- 부서정보
    );
   
    emp_rec REC_EMP;
BEGIN
    SELECT e.empno, e.ename, d.deptno, d.dname, d.loc
        -- INTO emp_rec
        INTO emp_rec.empno, emp_rec.ename, emp_rec.dept.deptno, emp_rec.dept.dname, emp_rec.dept.loc
        FROM emp e, dept d
        WHERE e.deptno = d.deptno
        AND e.empno = 7900;

    DBMS_OUTPUT.PUT_LINE('레코드 안에 레코드 정의');

    DBMS_OUTPUT.PUT_LINE(emp_rec.empno);
    DBMS_OUTPUT.PUT_LINE(emp_rec.ename);
    DBMS_OUTPUT.PUT_LINE(emp_rec.dept.deptno);
    DBMS_OUTPUT.PUT_LINE(emp_rec.dept.dname);
    DBMS_OUTPUT.PUT_LINE(emp_rec.dept.loc);
END;
/