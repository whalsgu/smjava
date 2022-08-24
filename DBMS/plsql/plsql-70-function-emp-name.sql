-- �Լ�(FUNCTION) ����
-- �Լ��� �Ķ���͸� ����
-- IN  : �Ķ���͸� �Է¿����� ����
-- OUT : �������� ����

CREATE OR REPLACE FUNCTION func_emp_name_in_return
(
    IN_EMPNO IN EMP.EMPNO%TYPE  -- �Լ��� ȣ���� �� ���޵Ǵ� �Է°��� �ڷ���
)
RETURN EMP.ENAME%TYPE           -- ���� Ÿ��(�ڷ���)
IS
    OUT_ENAME EMP.ENAME%TYPE;   -- �Լ� ���ο��� ����� ���� ����
BEGIN
    SELECT ENAME INTO OUT_ENAME
        FROM EMP
        WHERE EMPNO = IN_EMPNO;
        
    RETURN OUT_ENAME;   -- ó�� ��� ����
END;

/
    