/*
���� ���:
IF ���ǽ� THEN
    ��ɹ�;
ELSIF ���ǽ� THEN
    ��ɹ�;
ELSE
    ��ɹ�;
END IF;
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
*/
SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 90;
BEGIN
    IF V_SCORE >= 95 THEN
        DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��) A�����Դϴ�.');
    ELSIF V_SCORE >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��) B�����Դϴ�.');
    ELSIF V_SCORE >= 80 THEN
        DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��) C�����Դϴ�.');
    ELSIF V_SCORE >= 70 THEN
        DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��) D�����Դϴ�.');
    ELSIF V_SCORE >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��) E�����Դϴ�.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��) F�����Դϴ�.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('����');
END;    

/
