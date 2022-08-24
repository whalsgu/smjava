
CREATE TABLE HELLO
(
    ID   CHAR(5) CONSTRAINT PK_HELLO_ID PRIMARY KEY,
    NAME VARCHAR2(20),
    TEL  VARCHAR2(20),
    AGE  NUMBER(3)
);    

CREATE TABLE hello3 AS SELECT * FROM hello;

DESC HELLO3;

INSERT INTO HELLO3 VALUES ('10000', 1000, '추종자', NULL, NULL);

DELETE FROM HELLO3 WHERE ID = '10000';
DELETE FROM HELLO3 WHERE ROWID = 'AAAWgEAANAAAACcAAA';
SELECT ROWID, ID, HNO, NAME FROM hello3;
SELECT ID, HNO, NAME FROM hello3;

CREATE UNIQUE INDEX PK_HELLO3_IDHNO ON HELLO3(ID, HNO);

SELECT * FROM HELLO;

CREATE TABLE HELLOX AS SELECT * FROM HELLO;
DESC HELLOX;

SELECT * FROM HELLOX;

INSERT INTO HELLOX VALUES ('10000', '추종자', NULL, NULL);

CREATE INDEX PK_HELLOX_ID ON HELLOX(ID);
CREATE INDEX PK_HELLOX_NAME ON HELLOX(NAME);

-- DML : DELETE
DELETE FROM hellox;
ROLLBACK;

-- DDL : TRUNCATE 
-- 데이터를 완전히 삭제, 롤백 불가
-- DELETE & COMMIT;
TRUNCATE TABLE hellox;
ROLLBACK; -- 롤백이 의미가 없다.

-- 테이블을 삭제
-- 종족되어 있는 인덱스도 함께 삭제
DROP TABLE hellox;

-- 유저 인덱스 : 인덱스 이름(index_name), 테이블 이름(table_name)
SELECT * FROM user_indexes;

-- 특정한 유저 인덱스의 칼럼 정보
SELECT * FROM USER_IND_COLUMNS;

SELECT a.index_name, a.table_name, b.column_position, b.column_name
    FROM user_indexes a, user_ind_columns b
    WHERE a.index_name = b.index_name
    ORDER BY 1, 2, 3;
    
-- 인덱스 삭제
DROP INDEX pk_hello3_idhno;

-- 테이블 이름 변경
-- RENAME 기존테이블명 TO 새로운태이블명
RENAME hello3 TO hellox;

-- 사전에서 테이블명 확인
SELECT * FROM ALL_TABLES WHERE owner IN('SOLUSER');

