/*
������ �⺻�� ���� : 
�����̸� �ڷ��� DEFAULT ���̳� ǥ����
*/
SET SERVEROUTPUT ON;
DECLARE
    V_DEPTNO NUMBER(2) DEFAULT 10;          -- �⺻��(default)
    V_EMPNO CONSTANT NUMBER(4) := 7900;     -- ���('JAMES')
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME := 'JAMES';

    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('NAME : ' || V_ENAME);
    
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPTNO);
END;    

/
