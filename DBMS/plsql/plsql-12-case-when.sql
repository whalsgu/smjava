/*
조건 제어문: CASE ~ WHEN
CAS
    WHEN 조건식1 THEN
        명령문;
    WHEN 조건식2 THEN
        명령문;
    ELSE
        명령문;
END CASE;
--------------------------------------------------------------------------------
-- 검사값(기준값)없이 조건식만 사용    
SELECT ename, sal, job,
    CASE
        WHEN job = 'MANAGER'  THEN sal * 0.1
        WHEN job = 'SALESMAN' THEN sal * 0.2
        WHEN job = 'ANALYST'  THEN sal * 0.3
        ELSE sal * 0.05
    END AS upsal
    FROM emp;
--------------------------------------------------------------------------------
SELECT ename, sal, job, comm,
    CASE 
        WHEN comm is null THEN sal * 1.5
        WHEN comm = 0 THEN sal * 1.4
        WHEN comm > 0 THEN sal + comm
        ELSE sal
    END AS upsal
    FROM emp;
--------------------------------------------------------------------------------
*/
SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 88;
    V_GRADE CHAR;
BEGIN
    CASE
        WHEN V_SCORE >= 95 THEN
            V_GRADE := 'A';
        WHEN V_SCORE >= 90 THEN
            V_GRADE := 'B';
        WHEN V_SCORE >= 80 THEN
            V_GRADE := 'C';
        WHEN V_SCORE >= 70 THEN
            V_GRADE := 'D';
        WHEN V_SCORE >= 60 THEN
            V_GRADE := 'E';
        ELSE
            V_GRADE := 'F';
    END CASE;

    DBMS_OUTPUT.PUT_LINE('점수 ' || V_SCORE || '는(은)' || V_GRADE || '학점입니다.');
END;    

                                                                            
