/*
비교연산자 : 같다(=), >, <, >=, <=, !=, <>
조건 제어문:
IF 조건식 THEN
    명령문;
ELSE
    명령문;
END IF;
--------------------------------------------------------------------------------
나머지 값 반환 : MOD(나누어질 숫자, 나눌 숫자)
--------------------------------------------------------------------------------
*/
SET SERVEROUTPUT ON;
DECLARE
    V_NUM NUMBER := 10;
    -- V_NUM NUMBER := 9;
BEGIN
    IF MOD(V_NUM, 2) = 1 THEN   -- 같다(=), MOD() 나머지 값 구하는 함수
        DBMS_OUTPUT.PUT_LINE('NUM 값 ' || V_NUM || '는(은) 홀수입니다.');
        -- 자바언어
        -- System.out.println("NUM 값 " + V_NUM + "는(은) 홀수입니다.");
    ELSE
        DBMS_OUTPUT.PUT_LINE('NUM 값 ' || V_NUM || '는(은) 짝수입니다.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('THE END');
END;    

/
