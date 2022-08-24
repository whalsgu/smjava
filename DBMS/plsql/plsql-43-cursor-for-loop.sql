-- ����� Ŀ�� ����(Declaration)
-- FOR ... LOOP
-- FOR ���� IN Ŀ���̸� LOOP
-- �ڵ����� Ŀ��(Open, Fetch, Close)

SET SERVEROUTPUT ON;

DECLARE
   CURSOR c1 IS SELECT DEPTNO, DNAME, LOC FROM DEPT;

BEGIN
   -- Ŀ�� FOR LOOP ���� (�ڵ� Open, Fetch, Close)
   FOR c1_dept IN c1 LOOP
      DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || c1_dept.DEPTNO
                      || ', DNAME : ' || c1_dept.DNAME
                      || ', LOC : ' || c1_dept.LOC);
   END LOOP;

END;
/