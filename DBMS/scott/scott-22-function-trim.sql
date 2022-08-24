-- 문자열 함수 : 문자 지우기
-- trim  : 문자열의 양쪽에서 지정된 문자열을 지움
--       : trim(옵션 삭제할문자열 from 원본문자열)
--       : 옵션
--         -> both : 양쪽
--         -> leading : 왼쪽
--         -> trailing : 오른쪽
-----------------------------------------------------
-- ltrim : 문자열의 왼쪽에서 지정된 문자열을 지움
--       : ltrim(원본문자열, 삭제할 문자열)
-- rtrim : 문자열의 오른쪽에서 지정된 문자열을 지움
--       : rtrim(원본문자열, 삭제할 문자열)

-- 문자열의 양쪽 공백을 제거
-- 지울 문자열을 지정하지 않으면 공백
SELECT '[' || trim('    홍길동    ') || ']' FROM dual;
-- SELECT '[' || trim('----홍길동----', '-') || ']' FROM dual;

SELECT '[' || trim(both ' ' from '    홍길동    ') || ']' FROM dual;   -- 공백제거
SELECT '[' || trim(both '-' from '----홍길동----') || ']' FROM dual;   -- 하이픈(-) 제거
SELECT '[' || trim(both '.' from '...----홍길동----...') || ']' FROM dual;   -- 마침표(.) 제거

-- 왼쪽 문자열 공백 지움
SELECT '[' || ltrim('    홍길동    ') || ']' FROM dual;
SELECT '[' || ltrim('    홍길동    ', ' ') || ']' FROM dual;               -- 지울 문자열을 지정
SELECT '[' || ltrim('....홍길동....', '.') || ']' FROM dual;               -- 지울 문자열을 지정
SELECT '[' || trim(leading from '    홍길동    ') || ']' FROM dual;        -- 지정하지 않으면 공백
SELECT '[' || trim(leading ' ' from '    홍길동    ') || ']' FROM dual;    -- 공백지정
SELECT '[' || trim(leading '-' from '----홍길동----') || ']' FROM dual;    -- 하이픈(-) 제거

-- 오른쪽 문자열 공백 지움
SELECT '[' || rtrim('    홍길동    ') || ']' FROM dual;
SELECT '[' || rtrim('    홍길동    ', ' ') || ']' FROM dual;               -- 지울 문자열을 지정
SELECT '[' || rtrim('....홍길동....', '.') || ']' FROM dual;               -- 지울 문자열을 지정
SELECT '[' || trim(trailing from '    홍길동    ') || ']' FROM dual;       -- 지정하지 않으면 공백
SELECT '[' || trim(trailing ' ' from '    홍길동    ') || ']' FROM dual;   -- 공백지정
SELECT '[' || trim(trailing '-' from '----홍길동----') || ']' FROM dual;   -- 하이픈(-) 제거

