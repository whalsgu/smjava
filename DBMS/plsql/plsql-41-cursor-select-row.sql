/*
Ŀ��(CURSOR) : 
  1. Ŀ���� �˻� ����� ��� �ִ� ����
  2. �˻������ 1�� �̻��� ����Ǿ��� �� ó��
  3. ���ڵ��� ��ġ, ���� ��ġ�� �̵��ؼ� ã�ư� �� �ִ�.
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
Ŀ���� �޼ҵ�:
1. Ŀ������(DECLARATION)
2. Ŀ������(OPEN)
3. Ŀ���б�(FETCH)
4. Ŀ���ݱ�(CLOSE)
*/

SET SERVEROUTPUT ON;

DECLARE
   -- Ŀ�� �����͸� �Է��� ���� ����
   V_DEPT_ROW DEPT%ROWTYPE;

   -- ����� Ŀ�� ����(Declaration)
   CURSOR c1 IS
      SELECT DEPTNO, DNAME, LOC
      FROM DEPT;
      WHERE DEPTNO = 40;

BEGIN
   OPEN c1; -- Ŀ�� ����(Open)

   FETCH c1 INTO V_DEPT_ROW;  -- Ŀ���κ��� �о�� ������ ���(Fetch)

   DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPT_ROW.DEPTNO);
   DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPT_ROW.DNAME);
   DBMS_OUTPUT.PUT_LINE('LOC : ' || V_DEPT_ROW.LOC);

   CLOSE c1;    -- Ŀ�� �ݱ�(Close)
END;
/