-- ���� ���ν���(Stored Procedure)
-- �̸��� ���� PL/SQL
-- ���ν������� �Ķ���͸� ����
-- IN  : �Ķ���͸� �Է¿����� ����
-- OUT : �Ķ���͸� ����� ����

DECLARE
    V_ENAME EMP.ENAME%TYPE; -- �����
BEGIN
    proc_emp_name_in_out(7900, V_ENAME);
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || 7900);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || V_ENAME);
    
    DBMS_OUTPUT.PUT_LINE('---------------------------------');
    
    proc_emp_name_in_out(7566, V_ENAME);
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || 7566);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || V_ENAME);
    
END;