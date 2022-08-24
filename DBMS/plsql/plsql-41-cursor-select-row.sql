/*
커서(CURSOR) : 
  1. 커서는 검색 결과를 담고 있는 공간
  2. 검색결과가 1개 이상이 도출되었을 때 처리
  3. 레코드의 위치, 행의 위치를 이동해서 찾아갈 수 있다.
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
커서의 메소드:
1. 커서선언(DECLARATION)
2. 커서열기(OPEN)
3. 커서읽기(FETCH)
4. 커서닫기(CLOSE)
*/

SET SERVEROUTPUT ON;

DECLARE
   -- 커서 데이터를 입력할 변수 선언
   V_DEPT_ROW DEPT%ROWTYPE;

   -- 명시적 커서 선언(Declaration)
   CURSOR c1 IS
      SELECT DEPTNO, DNAME, LOC
      FROM DEPT;
      WHERE DEPTNO = 40;

BEGIN
   OPEN c1; -- 커서 열기(Open)

   FETCH c1 INTO V_DEPT_ROW;  -- 커서로부터 읽어온 데이터 사용(Fetch)

   DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPT_ROW.DEPTNO);
   DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPT_ROW.DNAME);
   DBMS_OUTPUT.PUT_LINE('LOC : ' || V_DEPT_ROW.LOC);

   CLOSE c1;    -- 커서 닫기(Close)
END;
/