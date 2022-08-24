-- 저장 프로시저(Stored Procedure)
-- 이름을 가진 PL/SQL
-- 프로시저에게 파라미터를 전달
-- IN  : 파라미터를 입력용으로 전달
-- OUT : 파라미터를 결과값 전달

CREATE OR REPLACE PROCEDURE proc_emp_name_in_out
(
    IN_EMPNO IN EMP.EMPNO%TYPE,
    OUT_ENAME OUT EMP.ENAME%TYPE
)
IS
BEGIN
    SELECT ENAME INTO OUT_ENAME
        FROM EMP
        WHERE EMPNO = IN_EMPNO;
END;

/
    