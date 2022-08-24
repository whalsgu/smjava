/*
���ڵ�(RECORD)�� �ȿ� �� �ٸ� ���ڵ��� 
--------------------------------------------------------------------------------
���ڵ�(RECORD) : �ڷ����� �ٸ� ���� �ڷ������� ����
TYPE ���ڵ��̸� IS RECORD (
    �����̸� �ڷ��� NOT NULL := �� �Ǵ� ǥ����
    �����̸� ���ڵ���
)
--------------------------------------------------------------------------------
��� ���̺�(EMP)�ȿ� �μ������� ������ ����
--------------------------------------------------------------------------------
*/
SET SERVEROUTPUT ON;

DESC EMP;

DECLARE
    TYPE REC_DEPT IS RECORD(        -- �μ� ���̺�
        deptno DEPT.DEPTNO%TYPE,    -- �μ��ڵ�
        dname DEPT.DNAME%TYPE,      -- �μ��̸�
        loc DEPT.LOC%TYPE           -- �μ���ġ
    );
   
    dept_rec REC_DEPT;
BEGIN
    SELECT *
        INTO dept_rec
        FROM dept
        WHERE deptno = 30;

    DBMS_OUTPUT.PUT_LINE(dept_rec.deptno);
    DBMS_OUTPUT.PUT_LINE(dept_rec.dname);
    DBMS_OUTPUT.PUT_LINE(dept_rec.loc);
END;
/