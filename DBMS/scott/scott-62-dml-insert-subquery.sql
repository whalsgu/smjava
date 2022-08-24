-- 서브쿼리를 이용한 입력
-- 서브쿼리를 이용하여 INSERET를 하는 경우는 VALUES 구문을 생략
-- 조건:
--   1. 칼럼의 갯수가 일치
--   2. 칼럼의 자료형이 일치

-- 전체 사원의 급여등급
SELECT e.*, s.*
    FROM emp e, salgrade s
    WHERE e.sal BETWEEN s.losal AND s.hisal;
    
-- 전체 사원중 급여등급이 4등급인 사원
SELECT e.*, s.*
    FROM emp e, salgrade s
    WHERE e.sal BETWEEN s.losal AND s.hisal
    AND s.grade = 4;
    
-- 전체 사원중 급여등급이 4등급인 사원 테이블
CREATE TABLE emp4 AS SELECT * FROM emp WHERE 1 <> 1;    -- 빈테이블

-- 전체 사원중 급여등급이 4등급인 사원 테이블에 입력
INSERT INTO emp4 
    SELECT e.*
        FROM emp e, salgrade s
        WHERE e.sal BETWEEN s.losal AND s.hisal
        AND s.grade = 4;
        
SELECT * FROM emp4;        

--------------------------------------------------------------------------------
-- 전체 사원중 급여등급이 2등급인 사원 테이블에 입력
INSERT INTO emp4 (empno, ename, job, mgr, hiredate, sal, deptno)
    SELECT e.empno, e.ename, e.job, e.mgr, sysdate, e.sal, null
        FROM emp e, salgrade s
        WHERE e.sal BETWEEN s.losal AND s.hisal
        AND s.grade = 2;

SELECT * FROM emp4;        
    