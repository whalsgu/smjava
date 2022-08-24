-- 날짜 함수


-- 달의 마지막 날짜를 구하는 함수
-- last_day(날짜데이터)
SELECT sysdate, last_day(sysdate) FROM dual;

-- 2021년 10월의 마지막 날짜?
SELECT last_day('21/10/01') FROM dual;
SELECT last_day('2021/10/01') FROM dual;
