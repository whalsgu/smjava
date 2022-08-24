-- 집합연산자
-- UNION ALL
-- 조건: UNION과 동일
-- 차이: UNION과 차이는 중복되는 데이터도 모두 선택됨

-- UNION ALL : 중복을 포함한 모든 레코드 선택
SELECT * FROM emp   -- 12 레코드
UNION ALL
SELECT * FROM emp3; -- 12 레코드

SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN (10,20); -- 6개의 행
SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN (20); -- 3개의 행

-- UNION ALL
SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN (10,20) -- 6개의 행
-- UNION -- 총 6개
UNION ALL --  총 9개
SELECT empno, ename, sal, deptno FROM emp3 WHERE deptno IN (20); -- 3개의 행

-- A UNION ALL B UNION C
-- 12개의 행
SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN (10) -- 3개의 행
UNION ALL
SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN (20) -- 3개의 행
UNION
SELECT empno, ename, sal, deptno FROM emp3; -- 12개의 행

