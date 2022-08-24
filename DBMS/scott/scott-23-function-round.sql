-- 숫자 데이터 : 반올림
-- round : 반올림
-- trunc : 버림
-- ceil : 지정한 숫자보다 큰 정수 중에서 가장 작은 정수를 반환
-- floor : 지정한 숫자보다 작은 정수 중에서 가장 큰 정수를 반환
-- mod : 나머지 값을 반환

-- round(숫자, 반올림위치)
-- 반올림위치: 지정하지 않으면 소숫점이하 첫째 자리에서 반올림(소숫점을 버림, 정수)

-- 0.5를 더해서 소숫점 이하를 버림
SELECT round(123.4999) FROM dual;       -- 123.4999 + 0.5 -> 123.9999 -> 결과(123), 
SELECT round(123.5678) FROM dual;       -- 123.5678 + 0.5 -> 124.0678 -> 결과(124)
SELECT round(123.5678, 0) FROM dual;    -- 123.5678 + 0.5 -> 124.0678 -> 결과(124)

-- 소숫점이하 둘 째자리에서 반올림하여 첫 째자리 자름
SELECT round(123.4999, 1) FROM dual;    -- 123.49 + 0.05 -> 123.54 -> 123.5
SELECT round(123.4499, 1) FROM dual;    -- 123.44 + 0.05 -> 123.49 -> 123.4

-- 반올림위치 음수(-) 값 : 정수위치 자릿수에서 반올림
SELECT round(12345, -1) FROM dual;      -- 첫째자리에서 반올림, 12345 +  5 -> 12350 -> 결과 12350
SELECT round(12345, -2) FROM dual;      -- 둘째자리에서 반올림, 12345 + 50 -> 12395 -> 결과 12300

