-- 함수(FUNCTION) 정의
-- 함수에 파라미터를 전달
-- IN  : 파라미터를 입력용으로 전달
-- OUT : 지원하지 않음

CREATE OR REPLACE FUNCTION func_emp_name_in_return
(
    IN_EMPNO IN EMP.EMPNO%TYPE  -- 함수를 호출할 때 전달되는 입력값의 자료형
)
RETURN EMP.ENAME%TYPE           -- 리턴 타입(자료형)
IS
    OUT_ENAME EMP.ENAME%TYPE;   -- 함수 내부에서 사용할 변수 선언
BEGIN
    SELECT ENAME INTO OUT_ENAME
        FROM EMP
        WHERE EMPNO = IN_EMPNO;
        
    RETURN OUT_ENAME;   -- 처리 결과 리턴
END;

/
    