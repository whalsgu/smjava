-- 함수(FUNCTION) 호출

DECLARE
    V_ENAME EMP.ENAME%TYPE; -- 결과값
BEGIN
    V_ENAME := func_emp_name_in_return(7900);
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || 7900);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || V_ENAME);
    
    DBMS_OUTPUT.PUT_LINE('---------------------------------');
    
    V_ENAME := func_emp_name_in_return(7566);
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || 7566);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || V_ENAME);
    
END;