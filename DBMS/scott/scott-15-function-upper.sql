-- 내장함수(Built-in Function)
-- 1. 단일행 함수(Single-Row Function)
--    -> 데이터가 한 행씩 입력되고 입력된 한 행당 결과가 하나씩 나오는 함수 
-- 2. 다중행 함수(Multiple-Row Function)
--    -> 데이터가 여러 행에 입력되고 하나의 행으로 결과가 반환되는 함수

-- 단일행 함수
-- 문자함수(String)
-- 1. upper : 데이터를 대문자로 변환
-- 2. lower : 데이터를 소문자로 변환
-- 3. intcap : 첫 글자는 대문자, 나머지는 소문자로 변환

SELECT ename, upper(ename), lower(ename), initcap(ename) FROM emp;

SELECT ename, upper(ename) as ename2, lower(ename) as ename3, initcap(ename) as ename4 FROM emp;

-- 전체 이름으로 검색
SELECT empno, ename FROM emp WHERE ename = 'KING';
SELECT empno, ename FROM emp WHERE ename = 'king';          -- 소문자로 시작하는 이름을 가진 사원이 없음
SELECT empno, ename FROM emp WHERE ename = upper('king');

-- 이름의 일부 문자로 검색
SELECT empno, ename FROM emp WHERE ename LIKE 'J%';
SELECT empno, ename FROM emp WHERE ename LIKE 'j%';         -- 소문자로 시작하는 이름을 가진 사원이 없음
SELECT empno, ename FROM emp WHERE ename LIKE upper('j%');  -- 소문자를 대문자로 변환한 후에 검색

-- 대소문자(a, A)를 포함하는 이름을 가진 모든 사원
SELECT empno, ename FROM emp WHERE ename LIKE upper('%a%');  

-- 사원이름이 대문자로 저장되어 있기 때문에 소문자로 검색을 하면 못 찾음
SELECT empno, ename FROM emp WHERE ename = lower('CLARK');         

-- 테이블 데이터와 검색하고자 하는 데이터 양쪽을 모두 소문자로 변환해서 검색(안전)
-- 만약에 ename이 인덱스가 걸려 있다면 함수를 적용하면 인덱스가 사용되지 않음(속도가 느려짐)
SELECT empno, ename FROM emp WHERE lower(ename) = lower('CLARK');   

SELECT empno, ename FROM emp WHERE ename = initcap('cLARK');    -- 'Clark'는 없음
SELECT empno, ename FROM emp WHERE initcap(ename) = initcap('cLARK');   


