-- 조회 : WHRE

-- 조회 조건식없이 모든 테이블의 내용을 검색
SELECT * FROM emp;

-- 조건검색: 부서코드가 30인 사원정보
SELECT * FROM emp WHERE deptno = 30;

-- 부서코드(30)이고 직책(SALEMAN)인 사원? : AND
SELECT * FROM emp WHERE deptno = 30 AND job = 'SALESMAN';

-- 부서코드(30)이거나 직책(SALEMAN)인 사원? : OR
SELECT * FROM emp WHERE deptno = 30 OR job = 'SALESMAN';

-- 산술연산자를 검색 조건에 넣기
-- 연소득 SAL * 12 = 36000
-- 같다(=), 크다(>), 크거나 같다(>=), 작다(<), 작거나 같다(<=)
SELECT * FROM emp WHERE (sal * 12) = 36000;     -- 같다(=)
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) > 36000;
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) >= 36000;
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) < 36000;
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) <= 36000;

-- 같지 않다 : !=, <>, ^=
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) != 36000;
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) <> 36000;
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) ^= 36000;

-- sal이 3000인 데이터
SELECT * FROM emp WHERE sal = 3000;

-- 논리 부정 : NOT
-- sal = 3000에 대한 부정
-- sal이 3000이 아닌 모든 데이터
SELECT * FROM emp WHERE sal != 3000;
SELECT * FROM emp WHERE NOT sal = 3000;

-- OR
SELECT * FROM emp
    WHERE job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK';
    
-- NOT OR : 바로 뒤어 오는 조건을 NOT
-- 직책이 MANAGER는 아니고
-- 직책이 SALESMAN이거나 CLERK인 사원
SELECT * FROM emp
    WHERE NOT job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK';

-- NOT OR : 그룹으로 묶어서 전체를 NOT
-- 직책이 MANAGER도 아니고 SALESMAN 아니고 CLERK도 아닌 사원
SELECT * FROM emp
    WHERE NOT (job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK');
    
-- AND
-- 위의 NOT OR 조건을 AND 조건으로 바꾸면
-- 직책이 MANAGER도 아니고 SALESMAN 아니고 CLERK도 아닌 사원
SELECT * FROM emp
    WHERE job != 'MANAGER'
    AND job != 'SALESMAN'
    AND job != 'CLERK';
    
-- OR
-- 조건: 직책이 MANAGER이거나 SALESMAN 이거나 CLERK인 사원
SELECT * FROM emp
    WHERE job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK';

-- IN : 위의 OR 조건과 동일한 결과
-- 조건: 직책이 MANAGER이거나 SALESMAN 이거나 CLERK인 사원
-- 데이터는 대소문자 구분한다.
SELECT * FROM emp
    WHERE job IN('MANAGER', 'SALESMAN', 'CLERK')
    ORDER BY job;


-- NOT IN : 
-- 조건: 직책이 MANAGER도 아니고 SALESMAN도 아니고 CLERK도 아닌 사원
SELECT * FROM emp WHERE job != 'MANAGER' AND job != 'SALESMAN' AND job != 'CLERK';

SELECT * FROM emp
    WHERE job NOT IN('MANAGER', 'SALESMAN', 'CLERK')
    ORDER BY job;
    
-- IN
-- 부서가 10, 20인 사원
SELECT * FROM emp
    WHERE deptno IN(10, 20);    

-- NOT IN
-- 부서가 10도 아니고 20도 아닌 사원
SELECT * FROM emp
    WHERE deptno NOT IN(10, 20);                                


-- 부서가 10도 아니고 20도 아닌 사원중에 직책이 SALESMAN인 사원
-- 사원정보와 부서명도 출력
-- 사원번호로 내림차순 정렬(SORT), 사원이름으로 오름차순 정렬
-- 부서: emp.deptno = dept.deptno

SELECT * FROM emp WHERE deptno NOT IN (10, 20);

SELECT * FROM emp WHERE job = 'SALESMAN';


-- 부서정보
SELECT e.empno, e.ename, e.job, e.deptno, d.dname
    FROM emp e, dept d
    WHERE e.deptno NOT IN (10, 20)
    AND e.job = 'SALESMAN'
    AND e.deptno = d.deptno
    ORDER BY e.empno desc, e.ename asc;

-- BETWEEN x AND y
-- sal 값이 2000부터 3000 사이의 값을 검색
SELECT * FROM emp WHERE sal >= 2000 AND sal <= 3000;
SELECT * FROM emp WHERE sal BETWEEN 2000 AND 3000;

-- NOT BETWEEN x AND y
-- sal 값이 2000부터 3000 사이의 값이 아닌 데이터
SELECT * FROM emp WHERE sal < 2000 OR sal > 3000;
SELECT * FROM emp WHERE sal NOT BETWEEN 2000 AND 3000;

-- LIKE : 문자열을 검색
-- 사원의 이름 중에서 첫번째 문자가 'J'로 시작하는 사원을 찾아라
-- 찾을 문자 뒤에 %를 넣음
SELECT * FROM emp WHERE ename LIKE 'J%';

SELECT * FROM emp WHERE ename LIKE 'A%'; -- A로 시작하는 사원의 이름
SELECT * FROM emp WHERE ename LIKE 'B%'; -- B로 시작하는 사원의 이름

-- 임의의 문자와 매치
-- Underscore(_)
SELECT * FROM emp WHERE ename LIKE '_L%'; -- 첫번째는 임의의 문자뒤에 L인 이름
SELECT * FROM emp WHERE ename LIKE '__L%'; -- 첫번째와 두번째는 임의의 문자뒤에 L인 이름

-- 끝문자열이 MAN으로 끝나는 직책
SELECT * FROM emp WHERE job LIKE '%MAN';

-- 중간의 문자열이 'AM'을 포함하고 있는 사원
SELECT * FROM emp WHERE ename LIKE '%AM%'; -- JAMES

-- 끝문자가 'R'로 끝나는 이름
SELECT * FROM emp WHERE ename LIKE '%R'; 

-- 4자의 임의의 문자를 가진 이름
SELECT * FROM emp WHERE ename LIKE '____'; 
