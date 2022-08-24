/*
컬렉션(Collection) : 복합 자료형
1. 특정 자료형을 여러개 저장
2. 여러 종류의 데이터를 하나로 묶어 사용
--------------------------------------------------------------------------------
연관배열:
TYPE 배열이름 IS TABLE OF 자료형 INDEX BY 인덱스형
--------------------------------------------------------------------------------
인덱스형: 키로 사용할 인덱스의 자료형
1. BINARY_INTEGER
2. PLS_INTEGER(정수형)
3. VARCHAR2(문자형)
*/

SET SERVEROUTPUT ON;

DECLARE
   TYPE TEXTLISTS IS TABLE OF VARCHAR2(20)
      INDEX BY PLS_INTEGER;

   text_lists TEXTLISTS;

BEGIN
   text_lists(0) := '0st';

   text_lists(1) := '1st';
   text_lists(2) := '2nd';
   text_lists(3) := '3rd';
   text_lists(4) := '4th';

   text_lists(10) := '10th';
   
   DBMS_OUTPUT.PUT_LINE('text_lists(0) : ' || text_lists(0));

   DBMS_OUTPUT.PUT_LINE('text_lists(1) : ' || text_lists(1));
   DBMS_OUTPUT.PUT_LINE('text_lists(2) : ' || text_lists(2));
   DBMS_OUTPUT.PUT_LINE('text_lists(3) : ' || text_lists(3));
   DBMS_OUTPUT.PUT_LINE('text_lists(4) : ' || text_lists(4));
   
   DBMS_OUTPUT.PUT_LINE('text_lists(10) : ' || text_lists(10));

END;
/