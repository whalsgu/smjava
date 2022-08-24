-- 커서(CURSOR)
-- 다중 행 조회

SET SERVEROUTPUT ON;

DECLARE
   V_DEPT_ROW DEPT%ROWTYPE;

   CURSOR c1 IS SELECT DEPTNO, DNAME, LOC FROM DEPT;

BEGIN
   OPEN c1;

   LOOP
      FETCH c1 INTO V_DEPT_ROW;
      EXIT WHEN c1%NOTFOUND;    -- FETCH을 해서 더 이상 읽을 레코드가 없으면 TRUE, 루프를 탈출

      DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPT_ROW.DEPTNO
                        || ', DNAME : ' || V_DEPT_ROW.DNAME
                        || ', LOC : ' || V_DEPT_ROW.LOC);
   END LOOP;

   CLOSE c1;

END;
/