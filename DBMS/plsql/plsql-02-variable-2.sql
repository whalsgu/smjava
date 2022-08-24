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
*/
SET SERVEROUTPUT ON;

DESC DEPT;


DECLARE
    -- 변수 선언
    DEPTNO DEPT.DEPTNO%TYPE := 30;    -- 테이블명.칼럼명%TYPE, 테이블의 칼럼 타입을 그대로 적용
    DEPTNO2 NUMBER(2) := 30;

BEGIN
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DEPTNO2 : ' || DEPTNO2);
END;    

/
