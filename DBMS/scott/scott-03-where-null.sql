-- NULL ó��
-- �������� ���� ����ִ� ����
-- �������� ���� �������� �ʴ� ����
-- NULL�� ��������� �ϸ� NULL�� �ȴ�.

-- ���޿� : sal * 12
SELECT ename, sal, sal*12 as annsal, comm FROM emp;

-- ���Ѽҵ� : sal * 12 + comm
SELECT ename, sal, sal*12 as annsal, comm, sal*12+comm FROM emp;

-- comm�� null�� ���
SELECT * FROM emp WHERE comm = NULL;    -- �ڷᰡ �˻����� ����
SELECT * FROM emp WHERE comm = null;    -- �ڷᰡ �˻����� ����
-- comm�� null�� �ƴ� ���
SELECT * FROM emp WHERE comm != null;   -- �ڷᰡ �˻����� ����
SELECT * FROM emp WHERE comm <> null;   -- �ڷᰡ �˻����� ����
SELECT * FROM emp WHERE comm ^= null;   -- �ڷᰡ �˻����� ����

-- IS NULL
-- IS NOT NULL
SELECT * FROM emp WHERE comm IS NULL;
SELECT * FROM emp WHERE comm IS NOT NULL;

-- NULL�� ���� �� ����.
SELECT * FROM emp WHERE sal > NULL; -- �ڷᰡ �˻����� ����

-- ������ : NULL
-- true AND NULL : NULL
-- NULL AND NULL : NULL
SELECT * FROM emp WHERE sal > 3000 AND comm = NULL;
SELECT * FROM emp WHERE sal + comm > 3000 AND comm = NULL;

-- true OR NULL : TRUE
-- false OR NULL : NULL
-- NULL OR false : NULL
-- NULL OR NULL : NULL
SELECT * FROM emp WHERE sal > 3000 OR comm = NULL; -- TRUE OR NULL -> TRUE
SELECT * FROM emp WHERE sal > 5000 OR comm = NULL; -- FALSE OR NULL -> NULL
SELECT * FROM emp WHERE comm = NULL OR sal > 5000; -- NULL OR FALSE -> NULL



