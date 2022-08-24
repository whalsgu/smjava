/*
--------------------------------------------------------------------------------
참조형:
    1. %TYPE    : 열참조, 지정한 테이블의 열과 완전히 동일한 자료형
    2. %ROWTYPE : 행참조, 지정한 테이블의 행 구조 전체를 참조
    3. 예 : 변수이름 테이블이름.열이름%TYPE
--------------------------------------------------------------------------------
[TABLE DEPT]
DEPTNO NUMBER(2)    
DNAME  VARCHAR2(14) 
LOC    VARCHAR2(13) 
--------------------------------------------------------------------------------
SELECT DEPTNO, DNAME, LOC FROM DEPT WHERE DEPTNO = 30;
--------------------------------------------------------------------------------
*/
        
SET SERVEROUTPUT ON;
DECLARE
    DEPT_RECORD DEPT%ROWTYPE; -- 참조형 : %ROWTYPE (레코드, 하나의 행)
BEGIN
    SELECT DEPTNO, DNAME, LOC INTO DEPT_RECORD
        FROM DEPT
        WHERE DEPTNO = 30;
        
    DBMS_OUTPUT.PUT_LINE('[ 부서코드(30) 정보 ]');
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || DEPT_RECORD.DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DNAME : ' || DEPT_RECORD.DNAME);
    DBMS_OUTPUT.PUT_LINE('LOC : ' || DEPT_RECORD.LOC);
END;    

/