-- 명시적 커서 선언(Declaration)
-- FOR ... LOOP
-- FOR 변수 IN 커서이름 LOOP
-- 자동으로 커서(Open, Fetch, Close)

SET SERVEROUTPUT ON;

DECLARE
   CURSOR c1 IS SELECT DEPTNO, DNAME, LOC FROM DEPT;

BEGIN
   -- 커서 FOR LOOP 시작 (자동 Open, Fetch, Close)
   FOR c1_dept IN c1 LOOP
      DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || c1_dept.DEPTNO
                      || ', DNAME : ' || c1_dept.DNAME
                      || ', LOC : ' || c1_dept.LOC);
   END LOOP;

END;
/