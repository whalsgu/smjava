-- TOP-N
-- 순위를 지정
-- 서브쿼리, INLINE VIEW, ROWNUM 활용해서 처리 가능
-- 오라클 12c 이상(11g는 지원하지 않음)

-- 사원중에서 급여를 가장 많이 받는 순서
SELECT empno, ename, sal FROM emp ORDER BY sal desc;

-- 사원중에서 급여를 가장 많이 받는 사원 최상위 5명
-- 오라클 12c 이상(11g는 지원하지 않음)
SELECT empno, ename, sal 
    FROM emp ORDER BY sal desc
    FETCH FIRST 5 ROWS ONLY;

-- 사원중에서 급여를 가장 적게 받는 사원 최상위 5명
SELECT empno, ename, sal 
    FROM emp ORDER BY sal asc
    FETCH FIRST 5 ROWS ONLY;    

-- 중간 상위 5개를 건너뛰고 상위 5개의 레코드를 선택
SELECT empno, ename, sal 
    FROM emp ORDER BY sal desc
    OFFSET 5 ROWS               -- 상위 5개의 레코드를 건너뜀
    FETCH FIRST 5 ROWS ONLY;    -- 5개의 레코드를 선택

-- 사원중에서 급여를 가장 적게 받는 사원
-- 중간 상위 5개를 건너뛰고 상위 5개의 레코드를 선택
SELECT empno, ename, sal 
    FROM emp ORDER BY sal
    OFFSET 5 ROWS               -- 상위 5개의 레코드를 건너뜀
    FETCH FIRST 5 ROWS ONLY;    -- 5개의 레코드를 선택
