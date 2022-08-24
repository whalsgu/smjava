-- 두 날짜 사이의 개월 수를 구하는 함수
-- months_between(날짜데이터1, 날짜데이터2) : 경과한 개월 수

-- 입사월 - 현재월 -> 마이너스
SELECT ename, hiredate, months_between(hiredate, sysdate) FROM emp;

-- 현재월 - 입사월 -> 플러스
SELECT ename, hiredate, months_between(sysdate, hiredate) FROM emp;

-- 현재월 - 입사월 -> 플러스
SELECT ename, hiredate, trunc(months_between(sysdate, hiredate)) || '개월' FROM emp;

-- 근무한 개월수, 년수
SELECT ename, hiredate, 
    trunc(months_between(sysdate, hiredate)) || '개월', 
    round(trunc(months_between(sysdate, hiredate)) / 12, 2) || '년' FROM emp;