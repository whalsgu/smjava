/*
NOT NULL DEFAULT : 
변수에 NULL이 저장되지 않게 막으면서 기본값을 지정
변수이름 자료형 NOT NULL DEFAULT 값이나 표현식
*/
SET SERVEROUTPUT ON;
DECLARE
    V_DEPTNO NUMBER(2) NOT NULL DEFAULT 10; -- NOT NULL DEFAULT
    V_EMPNO CONSTANT NUMBER(4) := 7900;     -- 상수('JAMES')
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME := 'JAMES';
    
    -- NOT NULL
    -- V_DEPTNO := NULL;

    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('NAME : ' || V_ENAME);
    
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPTNO);

END;    

/
