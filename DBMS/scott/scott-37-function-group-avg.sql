-- �׷��Լ�: ������ �Լ�
-- ��հ��� ���ϴ� �Լ�
-- AVG(column)

-- ��ü ����� ��� �޿�?
SELECT avg(sal) FROM emp;

-- �μ��� 30�� ������� ��� �޿�
SELECT avg(sal) FROM emp WHERE deptno = 30;
SELECT trunc(avg(sal)) FROM emp WHERE deptno = 30;      -- ����(�Ҽ������� ����)
SELECT trunc(avg(sal), 2) FROM emp WHERE deptno = 30;   -- ����(�Ҽ������� 2�ڸ����� ǥ��)
SELECT round(avg(sal), 2) FROM emp WHERE deptno = 30;   -- �ݿø�(�Ҽ������� 3�ڸ����� �ݿø�)

-- �ɼ�: distinct, all
SELECT ename, sal FROM emp WHERE deptno = 30;
SELECT avg(sal) FROM emp WHERE deptno = 30;
SELECT avg(all sal) FROM emp WHERE deptno = 30;
SELECT avg(distinct sal) FROM emp WHERE deptno = 30;
SELECT trunc(avg(sal)), trunc(avg(all sal)), avg(distinct sal) FROM emp WHERE deptno = 30;



