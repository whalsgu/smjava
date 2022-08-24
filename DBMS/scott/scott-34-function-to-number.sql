-- 문자 데이터를 숫자 데이터 변환
-- to_number(문자열, 숫자포맷)

SELECT to_number('12345', '999999') FROM dual;

SELECT '12345' + 10 FROM dual;
SELECT '12345' - 10 FROM dual;
SELECT '12345' - '10' FROM dual;

SELECT to_number('12,345', '99,999') + '10' FROM dual;

SELECT to_number('12,345.12', '99,999.99') + '0.23' FROM dual;
