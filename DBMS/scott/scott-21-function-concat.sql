-- 문자열 함수 : 데이터를 결합(연결) 함수
-- 문자열 결합 : 문자열 || 문자열 || ...

-- 문자열 결합 : 문자열 || 문자열
SELECT empno, ename, empno || ename FROM emp; -- 사번과 이름 결합
SELECT empno, ename, ename || empno FROM emp; -- 이름과 사번을 결합

--사번 || '-' || 이름
SELECT empno, ename, empno || '-' || ename FROM emp;

-- 이름 || '(' || 사번 || ')'
SELECT empno, ename, ename || '(' || empno || ')' as enameno FROM emp;






