/*
변수의 기본값 선언 : 
변수이름 자료형 DEFAULT 값이나 표현식
*/
SET SERVEROUTPUT ON;
DECLARE
    V_DEPTNO NUMBER(2) DEFAULT 10;          -- 기본값(default)
    V_EMPNO CONSTANT NUMBER(4) := 7900;     -- 상수('JAMES')
    V_ENAME VARCHAR2(10);
BEGIN
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('NAME : ' || V_ENAME);
    
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPTNO);
END;    

/
