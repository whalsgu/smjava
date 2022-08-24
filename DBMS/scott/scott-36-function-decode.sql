-- DECODE
-- IF, SWITCH~CASE문과 유사
-- DECODE(검사값, 조건1, 결과1, 조건2, 결과2, ... 결과N)
-- 검사값이 조건1을 만족하면 결과1 리턴
-- 검사값이 조건2을 만족하면 결과2 리턴
-- 검사값과 만족하는 조건이 없으면 결과N


-- 수당이 NULL이 아니면 급여 + 수당 = 총급여
SELECT ename, sal, comm, decode(comm, null, sal, sal + comm) FROM emp;

-- 직책인 MANAGER인 사람:  급여의 10%를 더함
-- 직책인 SALESMAN인 사람: 급여의 20%를 더함
-- 직책인 ANALYST인 사람:  급여의 30%를 더함
-- 나머지는 급여의 5%를 더함
SELECT ename, sal, job,
    decode(job,
        'MANAGER',  sal * 0.1,
        'SALESMAN', sal * 0.2,
        'ANALYST',  sal * 0.3, sal * 0.05) upsal
    FROM emp;

