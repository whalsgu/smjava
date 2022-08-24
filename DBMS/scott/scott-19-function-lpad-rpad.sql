-- 문자열 함수: 빈 공간을 다른 문자로 채우는 함수
-- lpad(원본문자열, 최대자릿수, 채울문자) : 왼쪽 채우기, 오른쪽으로 맞추기 효과
-- rpad(원본문자열, 최대자릿수, 채울문자) : 오른쪽 채우기
-- 채우기 효과(왼쪽, 오른쪽)
-- 맞추기 효과(왼쪽, 오른쪽)
-- 자르기 효과(최대 자리수가 원본문자열보다 작으면 최대자릿수만큼 출력되고 데이터는 잘림)

-- [왼쪽 채우기]
-- 총 20자리에서 데이터를 표시하고 남은 자릿수 만큼 '#'으로 채움
SELECT job, lpad(job, 20, '#') FROM emp;    

-- 총 20자리에서 데이터를 표시하고 남은 자릿수 만큼 '.'으로 채움
SELECT job, lpad(job, 20, '.') FROM emp;    

-- 총 20자리에서 데이터를 표시하고 남은 자릿수 만큼 공백(' ')으로 채움
SELECT job, lpad(job, 20, ' ') FROM emp;
-- 채울문자를 지정하지 않으면 공백으로 채움(오른쪽 정렬)
SELECT job, lpad(job, 20) FROM emp;         


-- [오른쪽 채우기]
-- 총 20자리에서 데이터를 표시하고 남은 자릿수 만큼 '#'으로 채움
SELECT job, rpad(job, 20, '#') FROM emp;    

-- 총 20자리에서 데이터를 표시하고 남은 자릿수 만큼 '.'으로 채움
SELECT job, rpad(job, 20, '.') FROM emp;    

-- 총 20자리에서 데이터를 표시하고 남은 자릿수 만큼 공백(' ')으로 채움
SELECT job, rpad(job, 20, ' ') FROM emp;
-- 채울문자를 지정하지 않으면 공백으로 채움(오른쪽 정렬)
SELECT job, rpad(job, 20) FROM emp;         

SELECT job, rpad(job, 20), length(rpad(job, 20)) FROM emp;         

-- 최대 자리수가 원본문자열보다 작으면 최대자릿수만큼 출력되고 데이터는 잘림)
SELECT job, rpad(job, 5), length(rpad(job, 5)) FROM emp;         

-- 주민번호(123456-1234567) : 총 14자리
-- rpad: 123456-*******
SELECT rpad('123456-', 14, '*') FROM dual;
SELECT rpad('123456-1234567', 14, '*') FROM dual;


SELECT substr('123456-9876543', 1, instr('123456-9876543', '-')) FROM dual;

SELECT rpad(substr('123456-9876543', 1, instr('123456-9876543', '-')),
    length('123456-9876543'),
    '*')
    FROM dual;


-- 전화번호(010-1234-5678) : 총 13자리
-- rpad: 010-1234-****
SELECT rpad('010-1234-', 13, '*') FROM dual;

SELECT instr('010-1234-5678', '-', 1, 2) FROM dual;

SELECT rpad(substr('010-1234-5678', 1, instr('010-1234-5678', '-', 1, 2)),
    length('010-1234-5678'),
    '*')
    FROM dual;



