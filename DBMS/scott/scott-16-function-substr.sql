-- 문자열 함수 : 문자열 추출 함수
-- substr(데이터, 시작위치, 추출길이)
-- 시작위치 : 1부터, 마이너스(minus)이면 마지막 위치부터 시작
-- 추출길이 : 생략하면 문자열의 끝까지
-- 추출결과 : 
--   -> 없으면 null
--   -> 추출길이보다 작으면 문자열의 끝까지  

-- 1번째부터 2개의 문자를 추출
SELECT job, substr(job, 1, 2) FROM emp;

-- 6번째 위치에서 3개의 문자를 추출
SELECT job, substr(job, 6, 3) FROM emp;

-- 5번째 위치에서 끝까지(생략)
SELECT job, substr(job, 5) FROM emp;

-- 1번째부 4자리 추출
SELECT job, substr(job, 2, 4) FROM emp;

-- 시작위치를 마이너스(minus)로 지정
-- 문자열의 끝에서부터 앞으로 3자리를 이동해서 3차리 추출
SELECT job, substr(job, -3, 3) FROM emp;

-- 시작위치를 마이너스로 지정했는데 그 위치가 length 보다 작은면? 
-- 결과는? null
SELECT job, substr(job, -30, 3) FROM emp;


-- 시작위치를 플러스로 해서 전체 길이와 문자열을 추출?
SELECT empno, ename, job, substr(job, 1, length(job)) FROM emp;
SELECT empno, ename, job, substr(job, 1) FROM emp;


-- 시작위치를 마이너스로 해서 전체 길이와 문자열을 추출?
SELECT empno, ename, job, substr(job, -length(job), length(job)) FROM emp;
SELECT empno, ename, job, substr(job, -length(job)) FROM emp;
SELECT empno, ename, job, substr(job, length(job) * -1) FROM emp;

SELECT job, length(job), length(job) * -1 FROM emp;

