-- �׷��Լ�: ������ �Լ�
-- �������� ����
-- count(column)

-- ��ü ���� ����
SELECT count(*) FROM emp;
SELECT count(empno) FROM emp;
SELECT count(ename) FROM emp;

-- Į���� null�� �ִ� ���� ������ ���Ե��� ����
SELECT count(comm) FROM emp;
SELECT count(comm) FROM emp WHERE comm is not null;

SELECT count(comm) FROM emp WHERE comm is null;     -- ���: 0
SELECT count(empno) FROM emp WHERE comm is null;    -- ���: 8

