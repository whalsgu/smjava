-- �׷��Լ�: ������ �Լ�
-- �ִ밪, �ּڰ�
-- max(column) : �ִ밪
-- min(column) : �ּڰ�

-- ���� �޿��� ���� �޴� ����� �޿���
SELECT max(sal) FROM emp;

-- ���� �޿��� ���� �޴� ����� �޿���
SELECT min(sal) FROM emp;

-- ���� �޿��� ���� �޴� ����� ���� ���� �޴� ����� �޿���
SELECT min(sal), max(sal) FROM emp;

-- �Ի����� ���� ������ ����� �Ի�����
SELECT min(hiredate) FROM emp;

-- �Ի����� ���� �ֱ��� ����� �Ի�����
SELECT max(hiredate) FROM emp;

SELECT min(hiredate), max(hiredate) FROM emp;

SELECT min(hiredate), max(hiredate) FROM emp WHERE deptno = 20;
