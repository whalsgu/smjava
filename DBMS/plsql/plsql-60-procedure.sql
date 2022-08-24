-- 저장 프로시저(Stored Procedure)
-- 이름을 가진 PL/SQL

CREATE OR REPLACE PROCEDURE proc_emp_name
IS
    V_EMPNO NUMBER := 7900;
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME := 'EZEN';
    
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || V_ENAME);
END;

/
    