/*
�񱳿����� : ����(=), >, <, >=, <=, !=, <>
���� ���:
IF ���ǽ� THEN
    ��ɹ�;
ELSE
    ��ɹ�;
END IF;
--------------------------------------------------------------------------------
������ �� ��ȯ : MOD(�������� ����, ���� ����)
--------------------------------------------------------------------------------
*/
SET SERVEROUTPUT ON;
DECLARE
    V_NUM NUMBER := 10;
    -- V_NUM NUMBER := 9;
BEGIN
    IF MOD(V_NUM, 2) = 1 THEN   -- ����(=), MOD() ������ �� ���ϴ� �Լ�
        DBMS_OUTPUT.PUT_LINE('NUM �� ' || V_NUM || '��(��) Ȧ���Դϴ�.');
        -- �ڹپ��
        -- System.out.println("NUM �� " + V_NUM + "��(��) Ȧ���Դϴ�.");
    ELSE
        DBMS_OUTPUT.PUT_LINE('NUM �� ' || V_NUM || '��(��) ¦���Դϴ�.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('THE END');
END;    

/
