/*
레코드(RECORD)형은 사용자 자료형
--------------------------------------------------------------------------------
레코드(RECORD) : 자료형이 다른 여러 자료형들의 모음
TYPE 레코드이름 IS RECORD (
    변수이름 자료형 NOT NULL := 값 또는 표현식
)
--------------------------------------------------------------------------------
*/
SET SERVEROUTPUT ON;

DESC dept;
SELECT * FROM dept;

DECLARE
   TYPE REC_DEPT IS RECORD( -- 사용자 자료형을 정의
      deptno NUMBER(2) NOT NULL := 30,
      dname DEPT.DNAME%TYPE,
      loc DEPT.LOC%TYPE
   );
   
   -- 대.소문자 구분을 하지 않기 때문에 같은 리터럴로 인식
   -- rec_dept REC_DEPT;
   
   dept_rec REC_DEPT;   -- 레코드형 변수 dept_rec 선언
   
BEGIN
   dept_rec.deptno := 56;       -- 레코드형변수.속성에 값을 할당
   dept_rec.dname := 'EZEN56';
   dept_rec.loc := 'SEONGNAM';
   DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || dept_rec.deptno);    -- 참조 : 레코드형변수.속성에서 값을 참조
   DBMS_OUTPUT.PUT_LINE('DNAME : ' || dept_rec.dname);
   DBMS_OUTPUT.PUT_LINE('LOC : ' || dept_rec.loc);
   
    -- INSERT INTO dept VALUES dept_rec;
   INSERT INTO dept VALUES (dept_rec.deptno, dept_rec.dname, dept_rec.loc);
END;
/