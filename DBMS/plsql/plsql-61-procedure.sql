-- ���� ���ν���(Stored Procedure)
-- �̸��� ���� PL/SQL
-- ���ν������� �Ķ���͸� ����
-- IN : �Ķ���͸� �Է¿����� ����

CREATE OR REPLACE PROCEDURE proc_emp_parameter_in(V_EMPNO IN NUMBER)
IS
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME := 'EZEN';
    
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || V_ENAME);
END;

/
    