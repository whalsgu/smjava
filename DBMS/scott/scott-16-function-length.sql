-- length : 문자열 길이를 구하는 함수
-- length(column) : 칼럼의 문자열의 길이를 리턴
-- 문자열 길이는 논리적인 단위, 바이이 단위가 아님
-- "abc" : 3자리
-- "안녕하세요" : 5자리
------------------------------------------------------
-- lengthb : 문자열 길이를 바이트 단위로 구하는 함수
-- lengthb(column) : 칼럼의 문자열의 길이를 바이트 단위로 리턴
-- 실제로 데이터가 저장된 크기를 바이트 단위로 리턴

SELECT ename, length(ename) FROM emp;
SELECT ename, length(ename) FROM emp WHERE length(ename) = 4;   -- 문자열의 길이가 4인 사원
SELECT ename, length(ename) FROM emp WHERE length(ename) >= 4;  -- 문자열의 길이가 4보다 크거나 같은 사원
SELECT ename, length(ename) FROM emp WHERE length(ename) < 6;   -- 문자열의 길이가 6보다 작은 사원

-- 이름이 한글인 경우
SELECT ename, length(ename), lengthb(ename), job, length(job), lengthb(job) FROM emp3;

-- character set
SELECT * FROM nls_database_parameters WHERE parameter = 'NLS_CHARACTERSET';



