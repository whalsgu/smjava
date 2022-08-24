-- 그룹함수
-- GROUP BY ROLLUP
-- 그룹함수에 지정된 칼럼 단계별 집계(중단단계, 전체)
-- 중간 단계 : 지정된 칼럼의 수만큼 집계
-- 전체 집계 : 맨 마지막 열에 출력


-- (부서별, 직책별) 사원총수, 최고급여, 급여총액, 평균급여액
SELECT deptno, job, count(*), max(sal), sum(sal), trunc(avg(sal))
    FROM emp
    GROUP BY deptno, job
    ORDER BY deptno, job;
    
-- ROLLUP: 각 그룹별로 집계
-- 1단계 : deptno 집계
-- 2단계 : 전체 집계
SELECT deptno, job, count(*), max(sal), sum(sal), trunc(avg(sal))
    FROM emp
    GROUP BY ROLLUP(deptno, job)
    ORDER BY deptno, job;
    
    
-- GROUP BY deptno, rollup(job)
-- 부서코드로 그룹화를 하고 직책으로 병합
-- 직책(job) 단위로 병합
SELECT deptno, job, count(*), max(sal), sum(sal), trunc(avg(sal))
    FROM emp
    GROUP BY deptno, ROLLUP(job)
    ORDER BY deptno, job;
    