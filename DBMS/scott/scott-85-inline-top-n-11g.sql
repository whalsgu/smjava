-- TOP-N
-- 순위를 지정
-- 서브쿼리, INLINE VIEW, ROWNUM 활용해서 처리 가능
-- 오라클 11g

-- 사원중에서 급여를 가장 많이 받는 순서
SELECT empno, ename, sal FROM emp ORDER BY sal desc;

-- rownum : 고유한 레코드 번호
SELECT rownum, empno, ename, sal FROM emp;
SELECT rownum, empno, ename, sal FROM emp ORDER BY empno;

-- rownum : 고유한 레코드 번호
SELECT rownum, empno, ename, sal 
    FROM emp 
    ORDER BY sal desc;

-- 서브쿼리로 하게되면 새로운 ROWNUM이 부여 
-- 새로 부여된 ROWNUM은 정렬한 순서와 일치
SELECT rownum, empno, ename, sal 
    FROM (SELECT * FROM emp ORDER BY sal desc);

-- 사원중에서 급여를 가장 많이 받는 사원 최상위 5명
SELECT rownum, empno, ename, sal 
    FROM (SELECT * FROM emp ORDER BY sal desc)
    WHERE rownum <= 5;

-- 검색이 되지 않음
SELECT rownum, empno, ename, sal 
    FROM (SELECT * FROM emp ORDER BY sal desc)
    WHERE rownum > 5;

    
-- 중간부터 검색: 5명을 건너뛰기
-- 사원중에서 급여를 가장 많이 받는 사원 최상위 5명
SELECT rownum, e.* 
    FROM (SELECT rownum rnum, empno, ename, sal 
        FROM (SELECT * FROM emp ORDER BY sal desc) 
) e
WHERE rnum BETWEEN 6 AND 10;


-- 먼저 검색된 마지막 자료를 기준으로 새로운 검색 조건을 지정하여
-- 검색 범위를 축소시켜서 효율을 높임
-- 5번째 sal(2450)
SELECT rownum, e.empno, e.ename, e.sal 
    FROM (SELECT * FROM emp WHERE sal < 2450 ORDER BY sal desc) e
    WHERE rownum <= 5;


    
    
