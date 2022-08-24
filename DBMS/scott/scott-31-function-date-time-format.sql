-- 자료형 변환 : 날짜나 숫자를 문자로 변환
-- to_char(데이터, 포맷)

-- 날짜를 스트링 포맷(년월일)
SELECT to_char(sysdate, 'YYYYMMDD') FROM dual;
SELECT to_char(sysdate, 'YYYY.MM.DD') FROM dual;
SELECT to_char(sysdate, 'YYYY-MM-DD') FROM dual;
SELECT to_char(sysdate, 'YYYY/MM/DD') FROM dual;
SELECT to_char(sysdate, 'YY/MM/DD') FROM dual;

-- 세기(CC) : 21세기
SELECT to_char(sysdate, 'CC') FROM dual;

-- 연도
SELECT to_char(sysdate, 'YY') FROM dual;    -- 2자리
SELECT to_char(sysdate, 'YYYY') FROM dual;  -- 4자리

-- 월
SELECT to_char(sysdate, 'MM') FROM dual;    -- 2자리
SELECT to_char(sysdate, 'MON') FROM dual;   -- 2자리 + 월(언어별 월 이름 약자)
SELECT to_char(sysdate, 'MONTH') FROM dual; -- 2자리 + 월(언어별 월 이름 전체)

-- 일
SELECT to_char(sysdate, 'DD') FROM dual;    -- 2자리(2자리 숫자)
SELECT to_char(sysdate, 'DDD') FROM dual;   -- 3자리(1년에 몇일, 1~366)

-- 요일
SELECT to_char(sysdate, 'DY') FROM dual;    -- 언어별 요일 약자
SELECT to_char(sysdate, 'DAY') FROM dual;   -- 언어별 요일 전체
SELECT to_char(sysdate, 'W') FROM dual;     -- 월의 몇 번째 주, 1~5
SELECT to_char(sysdate, 'WW') FROM dual;    -- 1년 중 몇 번째 주, 1~53

-- 시간 포맷
-- 시간: HH, HH12, HH24
-- 분: MI
-- 초: SS
SELECT to_char(sysdate, 'HH24:MI:SS') FROM dual;        -- 24시간 단위, 시:분:초
SELECT to_char(sysdate, 'HH12:MI:SS') FROM dual;        -- 12시간 단위, 시:분:초
SELECT to_char(sysdate, 'AM HH12:MI:SS') FROM dual;     -- 오전/오후
SELECT to_char(sysdate, 'PM HH12:MI:SS') FROM dual;     -- 오전/오후
SELECT to_char(sysdate, 'A.M. HH12:MI:SS') FROM dual;   -- 오전/오후
SELECT to_char(sysdate, 'P.M. HH12:MI:SS') FROM dual;   -- 오전/오후
SELECT to_char(sysdate, 'HH12:MI:SS AM') FROM dual;     -- 12시간 단위, 시:분:초
SELECT to_char(sysdate, 'HH:MI:SS') FROM dual;          -- 12시간 단위, 시:분:초


