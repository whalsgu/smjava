-- �׷��Լ� : count, avg, min, max, sum
-- �׷��Լ��� ���ؼ� ���� ����� ��� ó��
-- GROUP BY

-- ������, �׷��� �����ؼ� ����� �� ����.
-- SELECT deptno, job, sum(sal) FROM emp ORDER BY deptno; 


-- �μ��� ������� ��� �޿���
SELECT * from dept;
SELECT avg(sal) FROM emp WHERE deptno = 10;
SELECT avg(sal) FROM emp WHERE deptno = 20;
SELECT avg(sal) FROM emp WHERE deptno = 30;
SELECT avg(sal) FROM emp WHERE deptno = 40;

-- ���տ�����(������)
SELECT '10' as deptno, trunc(avg(sal)) FROM emp WHERE deptno = 10
UNION ALL
SELECT '20' as deptno, trunc(avg(sal)) FROM emp WHERE deptno = 20
UNION ALL
SELECT '30' as deptno, trunc(avg(sal)) FROM emp WHERE deptno = 30
UNION ALL
SELECT '40' as deptno, trunc(avg(sal)) FROM emp WHERE deptno = 40;

-- GROUP BY column
-- �׷�ȭ�� Į���� ����
-- ���� Į���� ���� ����

-- �μ��� ������� ��� �޿���
SELECT deptno, trunc(avg(sal)) FROM emp GROUP BY deptno ORDER BY deptno;

-- �μ���, ��å�� ��� �޿���
SELECT deptno, job, sal FROM emp ORDER BY deptno;
SELECT deptno, job, trunc(avg(sal)) FROM emp GROUP BY deptno, job ORDER BY deptno;

-- �μ��� �� �޿���
SELECT deptno, sum(sal) FROM emp GROUP BY deptno ORDER BY deptno;

-- �μ���, ��å�� �� �޿���
SELECT deptno, job, sum(sal) FROM emp GROUP BY deptno, job ORDER BY deptno;

-- [����]
-- �μ��� ������� �Ѽ�
SELECT deptno, count(deptno) FROM emp GROUP BY deptno ORDER BY deptno;

-- �μ��� ������� �Ѽ�, �޿��Ѿ�, ��ձ޿���
SELECT deptno, count(deptno), sum(sal), avg(sal) FROM emp GROUP BY deptno ORDER BY deptno;

-- �μ��� ������� �޿��Ѿ�, ��ձ޿���, �ְ�޿���, �����޿���
SELECT deptno, avg(sal), max(sal), min(sal) FROM emp GROUP BY deptno ORDER BY deptno;
