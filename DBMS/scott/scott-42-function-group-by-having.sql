-- 그룹함수
-- HAVING: 출력 그룹을 제한하는 조건식
--   -> GROUP BY를 통해서 나온 결과 중에서 출력 그룹을 선별하는 조건식

-- 부서별, 직책별 평균 급여액
SELECT deptno, job, avg(sal) FROM emp GROUP BY deptno, job ORDER BY deptno;

-- 부서별, 직책별 평균 급여액
-- 조건: 평균 급여액이 3000보단 크거나 같은 급여액만 출력
SELECT deptno, job, avg(sal) 
    FROM emp 
    GROUP BY deptno, job 
    HAVING avg(sal) >= 3000
    ORDER BY deptno;

-- 소속부서가 10, 30인 사원중에서 
-- 부서별, 직책별 평균 급여액
-- 조건: 평균 급여액이 2000보단 크거나 같은 급여액만 출력
-- 오류: 그룹핑 함수를 WHERE 조건절에 넣을 수 없다.
SELECT deptno, job, avg(sal) 
    FROM emp 
    WHERE deptno in (10,30)
    -- AND avg(sal) > 2000
    GROUP BY deptno, job 
    HAVING avg(sal) > 2000
    ORDER BY deptno;

-- [문제]
-- 부서별로 사원들의 수, 급여총액, 평균급여액
-- 조건1: 부서(10, 20) 사원
-- 조건2: 사원의 수가 3이하인 경우
SELECT deptno, count(empno), sum(sal), avg(sal) 
    FROM emp 
    WHERE deptno in (10,20)     -- 부서(10, 20)
    GROUP BY deptno             -- 부서별 집계
    HAVING count(empno) <= 3    -- 사원의 수가 3이하
    ORDER BY deptno;            -- 부서별 오름차순
