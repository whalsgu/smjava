-- CASE
-- CASE 검사값(칼럼)
--      WHEN 조건1 THEN 결과1
--      WHEN 조건2 THEN 결과2
--      WHEN 조건3 THEN 결과3
--      ELSE 결과N
-- END AS ALIAS

-- [CASE]
-- 직책인 MANAGER인 사람:  급여의 10%를 더함
-- 직책인 SALESMAN인 사람: 급여의 20%를 더함
-- 직책인 ANALYST인 사람:  급여의 30%를 더함
-- 나머지는 급여의 5%를 더함
-- 자바의 switch 문과 유사
SELECT ename, sal, job,
    CASE job
        WHEN 'MANAGER'  THEN sal * 0.1
        WHEN 'SALESMAN' THEN sal * 0.2
        WHEN 'ANALYST'  THEN sal * 0.3
        ELSE sal * 0.05
    END AS upsal
    FROM emp;
    
-- 검사값(기준값)없이 조건식만 사용    
SELECT ename, sal, job,
    CASE
        WHEN job = 'MANAGER'  THEN sal * 0.1
        WHEN job = 'SALESMAN' THEN sal * 0.2
        WHEN job = 'ANALYST'  THEN sal * 0.3
        ELSE sal * 0.05
    END AS upsal
    FROM emp;
    
-- 수당
-- 다양한 조건에 따라서 처리
-- 자바의 if 문과 유사
SELECT ename, sal, job, comm,
    CASE 
        WHEN comm is null THEN sal * 1.5
        WHEN comm = 0 THEN sal * 1.4
        WHEN comm > 0 THEN sal + comm
        ELSE sal
    END AS upsal
    FROM emp;
    
