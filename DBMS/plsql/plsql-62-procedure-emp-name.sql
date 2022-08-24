-- ���� ���ν���(Stored Procedure)
-- �̸��� ���� PL/SQL
-- ���ν������� �Ķ���͸� ����
-- IN  : �Ķ���͸� �Է¿����� ����
-- OUT : �Ķ���͸� ����� ����

CREATE OR REPLACE PROCEDURE proc_emp_name_in_out
(
    IN_EMPNO IN EMP.EMPNO%TYPE,
    OUT_ENAME OUT EMP.ENAME%TYPE
)
IS
BEGIN
    SELECT ENAME INTO OUT_ENAME
        FROM EMP
        WHERE EMPNO = IN_EMPNO;
END;

/
    