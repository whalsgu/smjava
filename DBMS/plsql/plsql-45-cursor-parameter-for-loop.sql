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
    FOR V_DEPT_ROW IN c1(10) LOOP
         DBMS_OUTPUT.PUT_LINE('10�� �μ� - DEPTNO : ' || V_DEPT_ROW.DEPTNO
                                     || ', DNAME : ' || V_DEPT_ROW.DNAME
                                     || ', LOC : ' || V_DEPT_ROW.LOC);
    END LOOP;

    FOR V_DEPT_ROW IN c1(20) LOOP
         DBMS_OUTPUT.PUT_LINE('20�� �μ� - DEPTNO : ' || V_DEPT_ROW.DEPTNO
                                     || ', DNAME : ' || V_DEPT_ROW.DNAME
                                     || ', LOC : ' || V_DEPT_ROW.LOC);
    END LOOP;

END;
/