
CREATE TABLE HELLO
(
    ID   CHAR(5) CONSTRAINT PK_HELLO_ID PRIMARY KEY,
    NAME VARCHAR2(20),
    TEL  VARCHAR2(20),
    AGE  NUMBER(3)
);    

CREATE TABLE hello3 AS SELECT * FROM hello;

DESC HELLO3;

INSERT INTO HELLO3 VALUES ('10000', 1000, '������', NULL, NULL);

DELETE FROM HELLO3 WHERE ID = '10000';
DELETE FROM HELLO3 WHERE ROWID = 'AAAWgEAANAAAACcAAA';
SELECT ROWID, ID, HNO, NAME FROM hello3;
SELECT ID, HNO, NAME FROM hello3;

CREATE UNIQUE INDEX PK_HELLO3_IDHNO ON HELLO3(ID, HNO);

SELECT * FROM HELLO;

CREATE TABLE HELLOX AS SELECT * FROM HELLO;
DESC HELLOX;

SELECT * FROM HELLOX;

INSERT INTO HELLOX VALUES ('10000', '������', NULL, NULL);

CREATE INDEX PK_HELLOX_ID ON HELLOX(ID);
CREATE INDEX PK_HELLOX_NAME ON HELLOX(NAME);

-- DML : DELETE
DELETE FROM hellox;
ROLLBACK;

-- DDL : TRUNCATE 
-- �����͸� ������ ����, �ѹ� �Ұ�
-- DELETE & COMMIT;
TRUNCATE TABLE hellox;
ROLLBACK; -- �ѹ��� �ǹ̰� ����.

-- ���̺��� ����
-- �����Ǿ� �ִ� �ε����� �Բ� ����
DROP TABLE hellox;

-- ���� �ε��� : �ε��� �̸�(index_name), ���̺� �̸�(table_name)
SELECT * FROM user_indexes;

-- Ư���� ���� �ε����� Į�� ����
SELECT * FROM USER_IND_COLUMNS;

SELECT a.index_name, a.table_name, b.column_position, b.column_name
    FROM user_indexes a, user_ind_columns b
    WHERE a.index_name = b.index_name
    ORDER BY 1, 2, 3;
    
-- �ε��� ����
DROP INDEX pk_hello3_idhno;

-- ���̺� �̸� ����
-- RENAME �������̺�� TO ���ο����̺��
RENAME hello3 TO hellox;

-- �������� ���̺�� Ȯ��
SELECT * FROM ALL_TABLES WHERE owner IN('SOLUSER');

