-- ����ó��(EXCEPTION)
-- SQLCODE : ���� ��ȣ ��ȯ
-- SQLERRM : ���� �޽��� ��ȯ

DECLARE
   V_DNAME NUMBER;
   
BEGIN
    SELECT DNAME INTO V_DNAME
        FROM DEPT
        WHERE DEPTNO = 10;
        
    DBMS_OUTPUT.PUT_LINE('���ܰ� �߻��ϸ� �� ������ ������� �ʽ��ϴ�');

    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('���� ó�� : ���� ���� �� ���� �߻�');
            DBMS_OUTPUT.PUT_LINE('SQLCODE : ' || TO_CHAR(SQLCODE));
            DBMS_OUTPUT.PUT_LINE('SQLERRM : ' || SQLERRM);
        
END;
/