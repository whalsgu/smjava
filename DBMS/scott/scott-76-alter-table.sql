-- 테이블 변경: ALTER TABLE
--   1. 테이블의 구조 변경
--   2. 기존의 자료를 보존
--------------------------------------------------------------------------------
-- 명령
--   1. ADD: 테이블의 칼럼을 추가
--      ALTER TABLE 테이블명 ADD 칼럼명 자료형
--   2. RENAME: 테이블의 칼럼 이름을 변경
--      ALTER TABLE 테이블명 RENAME COLUMN 기존칼럼 TO 새로운칼럼
--   3. MODIFY: 테이블의 칼럼의 자료형을 변경
--      ALTER TABLE 테이블명 MODIFY 칼럼명 자료형   
--   4. DROP: 테입블의 칼럼을 삭제
--      ALTER TABLE 테이블명 DROP COLUMN 칼럼명

DESC hellox;
SELECT * FROM HELLOX;

-- 칼럼추가 : 주소
ALTER TABLE hellox ADD addr VARCHAR2(50);

-- 칼럼이름 변경 : addr -> loc
ALTER TABLE hellox RENAME COLUMN addr TO loc;

-- 칼럼의 자료형 변경 : loc(50) -> loc(100)
ALTER TABLE hellox MODIFY loc VARCHAR2(100);
ALTER TABLE hellox MODIFY loc VARCHAR2(50);     

-- 크기를 줄일 때 데이터가 NULL이거나
-- 데이터의 크기보다는 커야 한다.
INSERT INTO hellox VALUES ( '20000', 1000, 'HELLO', NULL, NULL, NULL); 
ALTER TABLE hellox MODIFY name VARCHAR2(10); 


-- 칼럼 삭제 : loc
ALTER TABLE hellox DROP COLUMN loc;


