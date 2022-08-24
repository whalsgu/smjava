-- 저장 프로시저(Stored Procedure)
-- 이름을 가진 PL/SQL
-- 프로시저에게 파라미터를 전달
-- IN : 파라미터를 입력용으로 전달

CREATE OR REPLACE PROCEDURE proc_emp_parameter_in(V_EMPNO IN NUMBER)
IS
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME := 'EZEN';
    
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || V_ENAME);
END;

/
    