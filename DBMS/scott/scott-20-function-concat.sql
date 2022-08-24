-- 문자열 함수 : 데이터를 결합(연결) 함수
-- concat(문자열1, 문자열2) : 문자열1 + 문자열2, 두 개의 문자열을 하나로 결합

SELECT empno, ename, concat(empno, ename) FROM emp; -- 사번과 이름 결합
SELECT empno, ename, concat(ename, empno) FROM emp; -- 이름과 사번을 결합

--사번 + '-' + 이름
SELECT empno, ename, concat(empno, concat('-', ename)) FROM emp;

-- 이름 + '(' + 사번 + ')'
SELECT empno, ename, concat(concat(ename, concat('(', empno)), ')') FROM emp;

-- 각 단계별 concat
SELECT concat('[', empno) FROM emp;
SELECT concat(ename, concat('[', empno)) FROM emp;
SELECT concat(concat(ename, concat('[', empno)), ']') FROM emp;





