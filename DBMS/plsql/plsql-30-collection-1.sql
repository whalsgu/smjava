/*
�÷���(Collection) : ���� �ڷ���
1. Ư�� �ڷ����� ������ ����
2. ���� ������ �����͸� �ϳ��� ���� ���
--------------------------------------------------------------------------------
�����迭:
TYPE �迭�̸� IS TABLE OF �ڷ��� INDEX BY �ε�����
--------------------------------------------------------------------------------
�ε�����: Ű�� ����� �ε����� �ڷ���
1. BINARY_INTEGER
2. PLS_INTEGER(������)
3. VARCHAR2(������)
*/

SET SERVEROUTPUT ON;

DECLARE
   TYPE TEXTLISTS IS TABLE OF VARCHAR2(20)
      INDEX BY VARCHAR2(10);

   text_lists TEXTLISTS;

BEGIN
   text_lists('A') := '0st';

   text_lists('B') := '1st';
   text_lists('C') := '2nd';
   text_lists('D') := '3rd';
   text_lists('E') := '4th';

   text_lists('TEN') := '10th';
   
   DBMS_OUTPUT.PUT_LINE('text_lists(A) : ' || text_lists('A'));

   DBMS_OUTPUT.PUT_LINE('text_lists(B) : ' || text_lists('B'));
   DBMS_OUTPUT.PUT_LINE('text_lists(C) : ' || text_lists('C'));
   DBMS_OUTPUT.PUT_LINE('text_lists(D) : ' || text_lists('D'));
   DBMS_OUTPUT.PUT_LINE('text_lists(E) : ' || text_lists('E'));
   
   DBMS_OUTPUT.PUT_LINE('text_lists(TEN) : ' || text_lists('TEN'));

END;
/