-- NULL
-- nvl(데이터, 대체값)
-- 데이터가 NULL이면 대체값을 리턴
-- nvl2(데이터, null이 아닐경우 대체값, null일 경우 대체값)

-- 수당(comm)이 null인 경우 
SELECT ename, sal, comm FROM emp;

-- 급여 + 수당: null인 경우 결과 null
SELECT ename, sal, comm, sal + comm FROM emp;

-- 수당이 null인 경우 0으로 처리
SELECT ename, sal, comm, nvl(comm, 0), sal + nvl(comm, 0) FROM emp;

------------------------------------------------------------------------
-- nvl2(데이터, null이 아닐경우 대체값, null일 경우 대체값)
SELECT ename, sal, comm, nvl2(comm, 'O', 'X') comm2 from emp;

-- 수당이 있으면 급여에 수당 * 3
-- 수당이 없으면 급여만 지금
SELECT ename, sal, comm, nvl2(comm, comm * 3, 0), sal + nvl2(comm, comm * 3, 0) as total from emp;
