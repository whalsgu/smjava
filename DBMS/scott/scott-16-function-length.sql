-- length : ���ڿ� ���̸� ���ϴ� �Լ�
-- length(column) : Į���� ���ڿ��� ���̸� ����
-- ���ڿ� ���̴� ������ ����, ������ ������ �ƴ�
-- "abc" : 3�ڸ�
-- "�ȳ��ϼ���" : 5�ڸ�
------------------------------------------------------
-- lengthb : ���ڿ� ���̸� ����Ʈ ������ ���ϴ� �Լ�
-- lengthb(column) : Į���� ���ڿ��� ���̸� ����Ʈ ������ ����
-- ������ �����Ͱ� ����� ũ�⸦ ����Ʈ ������ ����

SELECT ename, length(ename) FROM emp;
SELECT ename, length(ename) FROM emp WHERE length(ename) = 4;   -- ���ڿ��� ���̰� 4�� ���
SELECT ename, length(ename) FROM emp WHERE length(ename) >= 4;  -- ���ڿ��� ���̰� 4���� ũ�ų� ���� ���
SELECT ename, length(ename) FROM emp WHERE length(ename) < 6;   -- ���ڿ��� ���̰� 6���� ���� ���

-- �̸��� �ѱ��� ���
SELECT ename, length(ename), lengthb(ename), job, length(job), lengthb(job) FROM emp3;

-- character set
SELECT * FROM nls_database_parameters WHERE parameter = 'NLS_CHARACTERSET';



