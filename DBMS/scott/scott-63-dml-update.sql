-- 테이블에서 데이터 수정
/*
    UPDATE 테이블명
        SET 칼럼1 = 데이터1,
            칼럼2 = 데이터2,
            칼럼3 = 데이터3,
            ...
            칼럼N = 데이터N
        [ WHERE 조건식 ]
*/        

SELECT * FROM empx;
SELECT * FROM deptx;

-- 부서테이블의 모든 부서위치를 'SEOUL'로 변경
-- WHERE문을 주지 않으면 테이블의 모든 데이터가 변경
UPDATE deptx SET loc = 'SEOUL';

-- 부서이름이 '무역부'인 부서의 위치를 'SEONGNAM'으로 변경
UPDATE deptx SET loc = 'SEONGNAM'
    WHERE dname like '무역부%';

-- 부서이름이 없는 부서의 이름을 '지원부'로 변경하고
-- 부서위치는 '독도'로 변경
-- WHERE dname = null을 하면 찾지 못함
UPDATE deptx 
    SET dname = '지원부',
        loc = '독도'
    WHERE dname IS NULL;
    
-- [문제]
-- 임시 사원 테이블(empx)에서 급여가 2000이하인 사원의 
-- 수당에 500을 추가하라.
INSERT INTO empx SELECT * FROM emp;
SELECT * FROM empx;

SELECT * FROM empx WHERE sal <= 2000;

-- comm이 null인 사원은 누락(수정이 되지 않음)
UPDATE empx
    SET comm = comm + 500
    WHERE sal <= 2000;

-- comm이 null이면 500을 지정하고
-- comm이 null이 아니면 comm + 500을 지정
-- nvl2(col, col이 null이 아니면, col이 null이면)
UPDATE empx
    SET comm = nvl2(comm, comm + 500, 500) 
    WHERE sal <= 2000;

-- 확인
SELECT e1.empno, e1.ename, e1.sal, e1.comm, e2.comm
    FROM emp e1, empx e2
    WHERE e1.sal <= 2000
    AND e1.empno = e2.empno;
    
-- [문제] 검증?
-- empx.comm - emp.comm -> 500보다 큰 값을 가지는 데이터 잘못된 데이터
SELECT e1.empno, e1.ename, e1.sal, e1.comm, e2.comm, nvl2(e2.comm, e2.comm, 0) - nvl2(e1.comm, e1.comm, 0) as commx
    FROM emp e1, empx e2
    WHERE e1.sal <= 2000
    AND e1.empno = e2.empno
    AND (nvl2(e2.comm, e2.comm, 0) - nvl2(e1.comm, e1.comm, 0)) > 500;
