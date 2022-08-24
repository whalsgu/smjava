/*
NOT NULL DEFAULT : 
������ NULL�� ������� �ʰ� �����鼭 �⺻���� ����
�����̸� �ڷ��� NOT NULL DEFAULT ���̳� ǥ����
*/
SET SERVEROUTPUT ON;
DECLARE
    V_DEPTNO NUMBER(2) NOT NULL DEFAULT 10; -- NOT NULL DEFAULT
    V_EMPNO CONSTANT NUMBER(4) := 7900;     -- ���('JAMES')
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME := 'JAMES';
    
    -- NOT NULL
    -- V_DEPTNO := NULL;

    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('NAME : ' || V_ENAME);
    
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPTNO);

END;    

/
