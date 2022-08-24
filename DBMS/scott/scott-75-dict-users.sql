-- ������ ����(Data Dictionary)

SELECT * FROM dict WHERE table_name LIKE 'USER_T%' ORDER BY 1;

-- ������ ����ڰ� ������ ��ü ����
DESC USER_TABLES;
SELECT * FROM USER_TABLES;

-- ����ڰ� ������ ��ü ����
DESC ALL_TABLES;
SELECT * FROM ALL_TABLES;

SELECT * FROM ALL_TABLES WHERE owner = 'SCOTT';
SELECT * FROM ALL_TABLES WHERE owner = 'SOLUSER';

SELECT * FROM ALL_TABLES WHERE owner IN('SCOTT', 'SOLUSER');
