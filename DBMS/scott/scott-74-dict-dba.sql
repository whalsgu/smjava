-- ������ ����(Data Dictionary)
-- �����ͺ��̽� ����� ���� ����
-- �����ͺ��̽� ���� ����

DESC dict;

-- ���
-- TABLE_NAME    VARCHAR2(128)  
-- COMMENTS      VARCHAR2(4000) 

SELECT * FROM dict;

-- ������� �ε��� ����
SELECT * FROM dict WHERE table_name = 'USER_INDEXES';       -- Description of the user's own indexes
SELECT * FROM dict WHERE table_name = 'USER_IND_COLUMNS';   -- COLUMNs comprising user's INDEXes and INDEXes on user's TABLES

-- �����ͺ��̽��� ���� ������ ���� �������� ��ü ����
SELECT * FROM dict WHERE table_name = 'DBA_TABLES';         -- Description of all relational tables in the database
SELECT * FROM dba_tables;

-- ����� ����
SELECT * FROM dict WHERE table_name = 'DBA_USERS';          -- Information about all users of the database
DESC DBA_USERS;
SELECT * FROM DBA_USERS;
SELECT * FROM DBA_USERS WHERE username = 'SCOTT';
SELECT * FROM DBA_USERS WHERE username = 'SOLUSER';
