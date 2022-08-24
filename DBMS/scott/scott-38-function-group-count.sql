-- 그룹함수: 다중행 함수
-- 데이터의 갯수
-- count(column)

-- 전체 행의 갯수
SELECT count(*) FROM emp;
SELECT count(empno) FROM emp;
SELECT count(ename) FROM emp;

-- 칼럼에 null이 있는 경우는 갯수에 포함되지 않음
SELECT count(comm) FROM emp;
SELECT count(comm) FROM emp WHERE comm is not null;

SELECT count(comm) FROM emp WHERE comm is null;     -- 결과: 0
SELECT count(empno) FROM emp WHERE comm is null;    -- 결과: 8

