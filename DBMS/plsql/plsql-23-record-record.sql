/*
���ڵ�(RECORD)�� �ȿ� �� �ٸ� ���ڵ��� 
--------------------------------------------------------------------------------
���ڵ�(RECORD) : �ڷ����� �ٸ� ���� �ڷ������� ����
TYPE ���ڵ��̸� IS RECORD (
    �����̸� �ڷ��� NOT NULL := �� �Ǵ� ǥ����
    �����̸� ���ڵ���
)
--------------------------------------------------------------------------------
������̺�(EMP)�ȿ� �μ������� ������ ����
--------------------------------------------------------------------------------
*/
SET SERVEROUTPUT ON;

DESC EMP;

DECLARE
    TYPE REC_DEPT IS RECORD( -- �μ� ���̺�
        deptno DEPT.DEPTNO%TYPE,  -- �μ��ڵ�
        dname DEPT.DNAME%TYPE,    -- �μ��̸�
        loc DEPT.LOC%TYPE         -- �μ���ġ
    );
   
    TYPE REC_EMP IS RECORD(
        empno EMP.EMPNO%TYPE,   -- ����ڵ�
        ename EMP.ENAME%TYPE,   -- ����̸�
        dept REC_DEPT           -- �μ�����
    );
   
    emp_rec REC_EMP;
BEGIN
    emp_rec.empno := 7900;
    emp_rec.ename := 'KIM';
        
    emp_rec.dept.deptno := 55;
    emp_rec.dept.dname := 'RND';
    emp_rec.dept.loc := 'SEOUL';

    DBMS_OUTPUT.PUT_LINE('���ڵ� �ȿ� ���ڵ� ����');

    DBMS_OUTPUT.PUT_LINE(emp_rec.empno);
    DBMS_OUTPUT.PUT_LINE(emp_rec.ename);
    DBMS_OUTPUT.PUT_LINE(emp_rec.dept.deptno);
    DBMS_OUTPUT.PUT_LINE(emp_rec.dept.dname);
    DBMS_OUTPUT.PUT_LINE(emp_rec.dept.loc);
END;
/