-- 자료형 변환 : 날짜나 숫자를 문자로 변환
-- to_char(데이터, 포맷)

-- 천 단위로 구분 기호 표시(,)
SELECT sal, to_char(sal, '999,999') FROM emp;

SELECT to_char(1234567890, '999,999,999,999') as num FROM emp;  -- 빈자리를 채우지 않음
SELECT to_char(1234567890, '000,999,999,999') FROM emp;         -- 빈자리를 0으로 채움

-- 소숫점
SELECT to_char(1234.56, '999,999.99') FROM emp;
SELECT to_char(1234.56, '999,999.00') FROM emp;

SELECT to_char(1234, '999,999.99') FROM emp;
SELECT to_char(1234, '999,999.00') FROM emp;

-- 화폐단위
-- L: Locale, 지역화폐 단위 기호 
SELECT to_char(10000, 'L999,999') FROM emp;

-- $: 달러
SELECT to_char(10000, '$999,999') FROM emp;
