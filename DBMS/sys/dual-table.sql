-- DUAL : ����Ŭ���� �����ϴ� Ư���� ���̺�
-- ����(dummy) ���̺� : DUMMY VARCHAR2(1) 

DESC dual;
SELECT dummy FROM dual;

-- character set
SELECT * FROM nls_database_parameters WHERE parameter = 'NLS_CHARACTERSET';

-- DUAL : ����Ŭ���� �����ϴ� Ư���� ���̺�
SELECT '�ѱ�' as hangeul, length('�ѱ�') hanlen, lengthb('�ѱ�') as hanlenb FROM dual;

-- ���ó�¥
SELECT sysdate FROM dual;

SELECT * FROM emp;
SELECT upper('james') as abc FROM dual;

SELECT * FROM emp WHERE ename = (SELECT upper('james') as abc FROM dual);

