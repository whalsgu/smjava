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
    V_SCORE NUMBER := 88;
    V_GRADE CHAR;
BEGIN
    IF V_SCORE >= 95 THEN
        V_GRADE := 'A';
    ELSIF V_SCORE >= 90 THEN
        V_GRADE := 'B';
    ELSIF V_SCORE >= 80 THEN
        V_GRADE := 'C';
    ELSIF V_SCORE >= 70 THEN
        V_GRADE := 'D';
    ELSIF V_SCORE >= 60 THEN
        V_GRADE := 'E';
    ELSE
        V_GRADE := 'F';
    END IF;

    DBMS_OUTPUT.PUT_LINE('���� ' || V_SCORE || '��(��)' || V_GRADE || '�����Դϴ�.');
END;    

/
