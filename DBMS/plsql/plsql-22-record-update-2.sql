/*
���ڵ�(RECORD)���� ����� �ڷ���
--------------------------------------------------------------------------------
���ڵ�(RECORD) : �ڷ����� �ٸ� ���� �ڷ������� ����
TYPE ���ڵ��̸� IS RECORD (
    �����̸� �ڷ��� NOT NULL := �� �Ǵ� ǥ����
)
--------------------------------------------------------------------------------
���ڵ带 �̿��Ͽ� ���̺� ������ ����(UPDATE)
-- ROW : �� ��ü�� �����͸� ����
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
   dept_rec.deptno := 56;       -- ���ڵ�������.�Ӽ��� ���� �Ҵ�
   dept_rec.dname := 'EZ56';
   dept_rec.loc := 'DAEJEON';
   DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || dept_rec.deptno);    -- ���� : ���ڵ�������.�Ӽ����� ���� ����
   DBMS_OUTPUT.PUT_LINE('DNAME : ' || dept_rec.dname);
   DBMS_OUTPUT.PUT_LINE('LOC : ' || dept_rec.loc);
   
   UPDATE dept -- PL/SQL ���(ROW)
        SET ROW = dept_rec
        WHERE deptno = 56;        
END;
/