-- 데이터 사전(Data Dictionary)
-- 데이터베이스 운영관련 정보 제공
-- 데이터베이스 관리 업무

DESC dict;

-- 결과
-- TABLE_NAME    VARCHAR2(128)  
-- COMMENTS      VARCHAR2(4000) 

SELECT * FROM dict;

-- 사용자의 인덱스 정보
SELECT * FROM dict WHERE table_name = 'USER_INDEXES';       -- Description of the user's own indexes
SELECT * FROM dict WHERE table_name = 'USER_IND_COLUMNS';   -- COLUMNs comprising user's INDEXes and INDEXes on user's TABLES

-- 데이터베이스의 관리 권한을 가진 소유자의 객체 정보
SELECT * FROM dict WHERE table_name = 'DBA_TABLES';         -- Description of all relational tables in the database
SELECT * FROM dba_tables;

-- 사용자 정보
SELECT * FROM dict WHERE table_name = 'DBA_USERS';          -- Information about all users of the database
DESC DBA_USERS;
SELECT * FROM DBA_USERS;
SELECT * FROM DBA_USERS WHERE username = 'SCOTT';
SELECT * FROM DBA_USERS WHERE username = 'SOLUSER';
