/*
���ڵ�(RECORD)���� ����� �ڷ���
--------------------------------------------------------------------------------
���ڵ�(RECORD) : �ڷ����� �ٸ� ���� �ڷ������� ����
TYPE ���ڵ��̸� IS RECORD (
    �����̸� �ڷ��� NOT NULL := �� �Ǵ� ǥ����
)
--------------------------------------------------------------------------------
���ڵ带 �̿��Ͽ� ���̺� ������ ����(UPDATE)
--------------------------------------------------------------------------------
*/
SET SERVEROUTPUT ON;

DESC dept;
SELECT * FROM dept;

DECLARE
   TYPE REC_DEPT IS RECORD( -- ����� �ڷ����� ����
      deptno NUMBER(2) NOT NULL := 30,
      dname DEPT.DNAME%TYPE,
      loc DEPT.LOC%TYPE
   );
   
   dept_rec REC_DEPT;   -- ���ڵ��� ���� dept_rec ����
   
BEGIN
   dept_rec.deptno := 57;       -- ���ڵ�������.�Ӽ��� ���� �Ҵ�
   dept_rec.dname := 'EZ57';
   dept_rec.loc := 'DAEJEON';
   DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || dept_rec.deptno);    -- ���� : ���ڵ�������.�Ӽ����� ���� ����
   DBMS_OUTPUT.PUT_LINE('DNAME : ' || dept_rec.dname);
   DBMS_OUTPUT.PUT_LINE('LOC : ' || dept_rec.loc);
   
   UPDATE dept -- �������� ���
        SET dname = dept_rec.dname,
        loc   = dept_rec.loc
        WHERE deptno = 57;        
END;
/