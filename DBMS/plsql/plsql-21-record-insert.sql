/*
���ڵ�(RECORD)���� ����� �ڷ���
--------------------------------------------------------------------------------
���ڵ�(RECORD) : �ڷ����� �ٸ� ���� �ڷ������� ����
TYPE ���ڵ��̸� IS RECORD (
    �����̸� �ڷ��� NOT NULL := �� �Ǵ� ǥ����
)
--------------------------------------------------------------------------------
���ڵ带 �̿��Ͽ� ���̺� ������ �Է�(INSERT)
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
   
   -- ��.�ҹ��� ������ ���� �ʱ� ������ ���� ���ͷ��� �ν�
   -- rec_dept REC_DEPT;
   
   dept_rec REC_DEPT;   -- ���ڵ��� ���� dept_rec ����
   
BEGIN
   dept_rec.deptno := 57;       -- ���ڵ�������.�Ӽ��� ���� �Ҵ�
   dept_rec.dname := 'EZEN57';
   dept_rec.loc := 'SEONGNAM';
   DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || dept_rec.deptno);    -- ���� : ���ڵ�������.�Ӽ����� ���� ����
   DBMS_OUTPUT.PUT_LINE('DNAME : ' || dept_rec.dname);
   DBMS_OUTPUT.PUT_LINE('LOC : ' || dept_rec.loc);
   
   INSERT INTO dept VALUES dept_rec;
   COMMIT;
END;
/