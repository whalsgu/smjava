-- 숫자 데이터 : 버림
-- round : 반올림
-- trunc : 버림
-- ceil  : 지정한 숫자보다 큰 정수 중에서 가장 작은 정수를 반환
-- floor : 지정한 숫자보다 작은 정수 중에서 가장 큰 정수를 반환
-- mod   : 나머지 값을 반환

-- [ceil]
-- ceil(숫자) : 지정한 숫자보다 큰 정수 중에서 가장 작은 정수를 반환
-- 소숫점이 있는 실수에서 그 값보다는 큰 근접한 가장 큰 정수(올림)
SELECT ceil(1.456) FROM dual;   -- 실수(1.456) < 정수(2)
SELECT ceil(0.123) FROM dual;   -- 실수(0.123) < 정수(1)
SELECT ceil(-1.456) FROM dual;  -- 실수(-1.456) < 정수(-1)

-- 부동소숫점인 경우 의미가 있으며 정수는 그 정수값을 반환
SELECT ceil(345) FROM dual;     -- 정수(345) = 정수(345)
SELECT ceil(-345) FROM dual;    -- 정수(-345) = 정수(-345)

-- [floor]
-- floor(숫자) : 지정한 숫자보다 작은 정수 중에서 가장 큰 정수를 반환
-- 소숫점이 있는 실수에서 그 값보다는 큰 근접한 가장 자장 작은 정수(내림)
SELECT floor(1.456) FROM dual;   -- 실수(1.456) < 정수(1)
SELECT floor(0.123) FROM dual;   -- 실수(0.123) < 정수(0)
SELECT floor(-1.456) FROM dual;  -- 실수(-1.456) < 정수(-2)

-- 부동소숫점인 경우 의미가 있으며 정수는 그 정수값을 반환
SELECT floor(345) FROM dual;    -- 정수(345) = 정수(345)
SELECT floor(-345) FROM dual;   -- 정수(-345) = 정수(-345)


