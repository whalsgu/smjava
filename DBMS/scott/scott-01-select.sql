
-- 조회

-- 테이블 정보 
desc emp;

-- 행단위 조회 : 셀렉션(selection)
-- SELECT 칼럼명, 칼럼명, ... FROM 테이블명;
SELECT * FROM emp;
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno FROM emp;
SELECT emp.empno, emp.ename, emp.job, emp.mgr, emp.hiredate, emp.sal, emp.comm, emp.deptno FROM emp;
SELECT e.empno, e.ename, e.job, e.mgr, e.hiredate, e.sal, e.comm, e.deptno FROM emp e;

SELECT empno, ename FROM emp;

-- 검색조건 : WHERE 검색조건
SELECT * FROM emp WHERE empno = 7844;   -- 같다
SELECT * FROM emp WHERE empno != 7844;  -- 같지않다.
SELECT * FROM emp WHERE deptno = 30;    -- deptno가 30인 사원명단

-- 조인(join) : 여러 테이블을 연결해서 조회
-- 부서: emp.deptno = dept.deptno
SELECT emp.empno, emp.ename, emp.deptno, dept.deptno, dept.dname, dept.loc
    FROM emp, dept
    WHERE emp.deptno = dept.deptno;

-- 사원, 부서 테이블에서 소속된 부서명을 추출하고
-- 부서코드가 30(SALES)인 사원만 검색
SELECT emp.empno, emp.ename, emp.deptno, dept.deptno, dept.dname, dept.loc
    FROM emp, dept
    WHERE emp.deptno = 30 
    AND emp.deptno = dept.deptno;

-- 사원의 부서코드
SELECT deptno FROM emp;

-- 중복제거: 뒤에 나오는 칼럼정보에서 중복을 제거하여 하나의 레코만 출력
-- 같은부서 코드는 하나만 출력
SELECT DISTINCT deptno FROM emp;

-- 사원정보(사번, 이름, 직책, 직속상관의 사번, 입사일자, 급여, 수당, 소속부서코드)
SELECT * FROM emp;

-- 직책, 부소코드
-- 정렬(sort) : 기본(오름차순), ORDER BY
-- 오름차순 : asc
-- 내림차순 : desc
SELECT job, deptno FROM emp ORDER BY job, deptno;

-- 내림차순 
SELECT job, deptno FROM emp ORDER BY job desc, deptno desc;

-- 중복제거 : 직책, 부서 분포
-- DISTINCT 뒤에 오는 모든 칼럼에 대한 중복 체크
SELECT DISTINCT job, deptno FROM emp ORDER BY job, deptno;

-- 사번은 고유하므로 중복제거의 의미가 상실

SELECT DISTINCT job, deptno, empno FROM emp ORDER BY job, deptno;

-- 정렬: ORDER BY
-- 입사일자 순 정렬
SELECT * FROM emp ORDER BY hiredate;  -- 입사일이 가장 오래 사원 순서
SELECT * FROM emp ORDER BY hiredate desc;  -- 입사일이 최근 사원 순서

-- 소트 칼럼의 위치를 숫자로 지정
-- 5번째 칼럼 : hiredate
SELECT * FROM emp ORDER BY 5 desc;  -- 입사일이 최근 사원 순서
SELECT * FROM emp ORDER BY 6 desc;  -- 급여(sal)를 가장 많이 받는 사원 순서
SELECT * FROM emp ORDER BY 6 asc;  -- 급여(sal)를 가장 적게 받는 사원 순서

-- [문제1]
-- emp : 사원정보 테이블
-- sal : 월급여
-- comm : 년수당
-- 정렬: 급여, 입사일자
-- 출력: 이름, 직책, 급여, 입사일자
SELECT ename, job, sal, hiredate 
    FROM emp
    ORDER BY sal, hiredate;


-- [문제2]
-- 정렬: 총 월급여(급여, 수당), 입사일자
-- 출력: 이름, 직책, 급여, 수당, 입사일자
SELECT ename, job, sal, comm, sal + comm "총월급여", hiredate 
    FROM emp
    ORDER BY sal + comm, hiredate;

-- 칼럼이 null이면 연산의 결과도 null
-- nvl : null 처리 함수
-- 칼럼의 데이터가 null이 아니면 그 값을 반환하고 null이면 지정한 값을 반환
-- nvl(column, value)
SELECT ename, job, sal, comm, sal + nvl(comm, 0) as monsal, hiredate 
    FROM emp
    ORDER BY monsal, hiredate;

-- [문제3]
-- sal : 월급여
-- comm : 년수당
-- 사원의 연간 총 급여
-- 사원의 연간 총 소득
SELECT ename, job, sal, comm, sal + sal + sal + sal + sal + sal + sal + sal + sal + sal + sal + sal as sal2
    FROM emp
    ORDER BY sal2;

SELECT ename, job, sal, comm, sal * 12 as sal2, sal * 12 + nvl(comm, 0) as annual
    FROM emp
    ORDER BY sal2;

-- 월 평균 수입
SELECT ename, job, sal, comm, sal * 12 as sal2, sal * 12 + nvl(comm, 0) as annual, (sal * 12 + nvl(comm, 0)) / 12 as annualavg
    FROM emp
    ORDER BY annualavg;

