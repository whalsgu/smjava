/*
NOT NULL : ������ NULL�� ������� �ʰ� ����, ������ �� ���� �����ؾ� �Ѵ�.
�����̸� �ڷ��� NOT NULL := ���̳� ǥ����
*/
SET SERVEROUTPUT ON;
DECLARE
    -- NOT NULL�� ���ǵ� ������ �ʱ�ġ�� �Ҵ��Ͽ��� �մϴ�
    -- V_DEPTNO NUMBER(2) NOT NULL;    
    
    V_DEPTNO NUMBER(2) NOT NULL := 10;      -- NOT NULL
    V_EMPNO CONSTANT NUMBER(4) := 7900;     -- ���('JAMES')
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME := 'JAMES';

    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('NAME : ' || V_ENAME);
    
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPTNO);

END;    

/
