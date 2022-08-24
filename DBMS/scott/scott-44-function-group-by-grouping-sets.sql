-- 그룹함수
-- GROUPING SETS: 각 칼럼별 그룹
-- 같은 수준의 그룹화 칼럼이 여러 개일 때
-- 각각 같은 수준으로 출력

-- 단계별(부서별, 직책별)
SELECT deptno, job, count(*) FROM emp GROUP BY deptno, job;

-- 부서별 사원총수
SELECT deptno, count(deptno) FROM emp GROUP BY deptno;

-- 직책별 사원총수
SELECT job, count(job) FROM emp GROUP BY job;

-- 각 부서별 사원수, 직책별 사원수
SELECT deptno, job, count(*) 
    FROM emp 
    GROUP BY grouping sets(deptno, job)
    ORDER BY deptno, job;


