-- 저장 프로시저(Stored Procedure)
-- 이름을 가진 PL/SQL
-- 프로시저에게 파라미터를 전달
-- IN  : 파라미터를 입력용으로 전달
-- OUT : 파라미터를 결과값 전달

DECLARE
    V_ENAME EMP.ENAME%TYPE; -- 결과값
BEGIN
    proc_emp_name_in_out(7900, V_ENAME);
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || 7900);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || V_ENAME);
    
    DBMS_OUTPUT.PUT_LINE('---------------------------------');
    
    proc_emp_name_in_out(7566, V_ENAME);
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || 7566);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || V_ENAME);
    
END;