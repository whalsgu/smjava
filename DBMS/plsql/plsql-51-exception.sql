-- 예외처리(EXCEPTION)
-- 예외가 발생하여도 프로그램을 종료하지 않고 진행

DECLARE
   V_DNAME NUMBER;  -- VARCHAR2(14)
   
BEGIN
    SELECT DNAME INTO V_DNAME
        FROM DEPT
        WHERE DEPTNO = 10;

    -- 예외가 발생하면 예외가 발생한 이후의 명령문은 실행되지 않음
    DBMS_OUTPUT.PUT_LINE('부서명 :' || V_DNAME);
    
    EXCEPTION   -- 예외처리
        WHEN VALUE_ERROR THEN
            DBMS_OUTPUT.PUT_LINE('예외 처리 : 수치 또는 값 오류 발생');

    -- 예외처리 후 실행
    DBMS_OUTPUT.PUT_LINE('THE END');

END;
/