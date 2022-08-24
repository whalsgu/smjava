-- ����ó��(EXCEPTION)
-- ���ܰ� �߻��Ͽ��� ���α׷��� �������� �ʰ� ����

DECLARE
   V_DNAME NUMBER;  -- VARCHAR2(14)
   
BEGIN
    SELECT DNAME INTO V_DNAME
        FROM DEPT
        WHERE DEPTNO = 10;

    -- ���ܰ� �߻��ϸ� ���ܰ� �߻��� ������ ��ɹ��� ������� ����
    DBMS_OUTPUT.PUT_LINE('�μ��� :' || V_DNAME);
    
    EXCEPTION   -- ����ó��
        WHEN VALUE_ERROR THEN
            DBMS_OUTPUT.PUT_LINE('���� ó�� : ��ġ �Ǵ� �� ���� �߻�');

    -- ����ó�� �� ����
    DBMS_OUTPUT.PUT_LINE('THE END');

END;
/