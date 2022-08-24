-- 집합연산자
-- 차집합(MINUS)
-- 상위에 작성한 SELECT문의 결과에서 하위에 작성한 SELECT문의 결과를 뺀(제외한) 결과를 선택

-- 사원정보에서 부서가 10이 아닌 사원정보를 출력
SELECT * FROM emp -- 상위
MINUS
SELECT * FROM emp WHERE deptno = 10; -- 하위

-- 사원정보에서 부서가 10, 20이 아닌 사원정보를 출력
SELECT * FROM emp -- 상위
MINUS
SELECT * FROM emp WHERE deptno = 10
MINUS
SELECT * FROM emp WHERE deptno = 20;

-- 사원정보에서 부서가 10, 20, 30이 아닌 사원정보를 출력
-- 부서(10,20,30)를 제외한 사원은 존재하지 않음
SELECT * FROM emp -- 상위
MINUS
SELECT * FROM emp WHERE deptno = 10
MINUS
SELECT * FROM emp WHERE deptno = 20
MINUS
SELECT * FROM emp WHERE deptno = 30;

-- 테이블(emp) - 테이블(emp2)
-- 전체 사원에서 연급여총액이 36000보다 같거나 많은 사원 정보
SELECT empno, ename, sal, sal*12 as annual FROM emp
MINUS
SELECT * FROM emp2 WHERE annual < 36000;

-- 검증용
SELECT * FROM emp WHERE ename = 'KING'
UNION ALL
SELECT * FROM emp3 WHERE ename = 'KING';

-- 테이블(emp) - 테이블(emp3)
SELECT * FROM emp
MINUS
SELECT * FROM emp3;

-- 테이블(emp2) - 테이블(emp3)
SELECT empno, ename FROM emp2
MINUS
SELECT empno, ename FROM emp3;

