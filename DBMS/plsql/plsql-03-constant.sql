/*
��� ���� : ������ ���� ���� �� ������ ������ ���� 
�����̸� CONSTANT �ڷ��� := ���̳� ǥ����
*/
SET SERVEROUTPUT ON;
DECLARE
    V_EMPNO CONSTANT NUMBER(4) := 7900;  -- �������, ���� ������ �� �����ų �� ����.
    V_ENAME VARCHAR2(10);  -- 'JAMES'
BEGIN
    -- ����� ���� �����ų �� ����.
    -- V_EMPNO := 7788; -- ����
    V_ENAME := 'JAMES';

    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('NAME : ' || V_ENAME);
END;    

/
