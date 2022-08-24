-- 자료형 변환
-- to_char : 숫자, 날짜데이터를 문자로 변환
-- to_number : 문자 데이터를 숫자 데이터로 변환
-- to_date : 문자 데이터를 날짜 데이터로 변환

-- NUMBER + 문자열(숫자) : 자동형변환, 숫자로 변환
-- 암시적 형 변환(IMPLICIT TYPE CONVERSION)
SELECT ename, empno, empno + '11' FROM emp;
SELECT ename, empno, empno + '11', empno + 11 FROM emp;


-- NUMBER + 문자열(문자) : INVALID NUMBER 오류
SELECT ename, empno, empno + 'JX' FROM emp;

-- 문자열 + 문자열 : INVALID NUMBER 오류
SELECT ename, empno, ename + 'JX' FROM emp;

-- 문자열 || 문자열 : 문자열 결합
SELECT ename, empno, ename || '-JX' FROM emp;

