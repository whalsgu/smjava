--  Ŀ���� �Ķ���� ���

SET SERVEROUTPUT ON;

DECLARE
   -- Ŀ�� �����͸� �Է��� ���� ����
   V_DEPT_ROW DEPT%ROWTYPE;

   -- ����� Ŀ�� ����(Declaration)
   CURSOR c1 (p_deptno DEPT.DEPTNO%TYPE) IS
      SELECT DEPTNO, DNAME, LOC
        FROM DEPT
       WHERE DEPTNO = p_deptno;
BEGIN

   -- 20�� �μ� ó���� ���� Ŀ�� ���
   OPEN c1 (30);
      LOOP
         FETCH c1 INTO V_DEPT_ROW;
         EXIT WHEN c1%NOTFOUND;
         DBMS_OUTPUT.PUT_LINE('30�� �μ� - DEPTNO : ' || V_DEPT_ROW.DEPTNO
                                     || ', DNAME : ' || V_DEPT_ROW.DNAME
                                     || ', LOC : ' || V_DEPT_ROW.LOC);
      END LOOP;
   CLOSE c1;

END;
/