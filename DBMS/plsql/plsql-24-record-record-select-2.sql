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
    TYPE REC_EMP IS RECORD(
        empno EMP.EMPNO%TYPE,   -- ����ڵ�
        ename EMP.ENAME%TYPE,   -- ����̸�
        deptno DEPT.DEPTNO%TYPE,  -- �μ��ڵ�
        dname DEPT.DNAME%TYPE,    -- �μ��̸�
        loc DEPT.LOC%TYPE         -- �μ���ġ        
    );
   
    emp_rec REC_EMP;
BEGIN
    SELECT e.empno, e.ename, d.deptno, d.dname, d.loc
        INTO emp_rec
        FROM emp e, dept d
        WHERE e.deptno = d.deptno
        AND e.empno = 7900;

    DBMS_OUTPUT.PUT_LINE('���ڵ� �ȿ� ���ڵ� ����');

    DBMS_OUTPUT.PUT_LINE(emp_rec.empno);
    DBMS_OUTPUT.PUT_LINE(emp_rec.ename);
    DBMS_OUTPUT.PUT_LINE(emp_rec.deptno);
    DBMS_OUTPUT.PUT_LINE(emp_rec.dname);
    DBMS_OUTPUT.PUT_LINE(emp_rec.loc);
END;
/