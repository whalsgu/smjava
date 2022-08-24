-- �׷��Լ�
-- HAVING: ��� �׷��� �����ϴ� ���ǽ�
--   -> GROUP BY�� ���ؼ� ���� ��� �߿��� ��� �׷��� �����ϴ� ���ǽ�

-- �μ���, ��å�� ��� �޿���
SELECT deptno, job, avg(sal) FROM emp GROUP BY deptno, job ORDER BY deptno;

-- �μ���, ��å�� ��� �޿���
-- ����: ��� �޿����� 3000���� ũ�ų� ���� �޿��׸� ���
SELECT deptno, job, avg(sal) 
    FROM emp 
    GROUP BY deptno, job 
    HAVING avg(sal) >= 3000
    ORDER BY deptno;

-- �ҼӺμ��� 10, 30�� ����߿��� 
-- �μ���, ��å�� ��� �޿���
-- ����: ��� �޿����� 2000���� ũ�ų� ���� �޿��׸� ���
-- ����: �׷��� �Լ��� WHERE �������� ���� �� ����.
SELECT deptno, job, avg(sal) 
    FROM emp 
    WHERE deptno in (10,30)
    -- AND avg(sal) > 2000
    GROUP BY deptno, job 
    HAVING avg(sal) > 2000
    ORDER BY deptno;

-- [����]
-- �μ����� ������� ��, �޿��Ѿ�, ��ձ޿���
-- ����1: �μ�(10, 20) ���
-- ����2: ����� ���� 3������ ���
SELECT deptno, count(empno), sum(sal), avg(sal) 
    FROM emp 
    WHERE deptno in (10,20)     -- �μ�(10, 20)
    GROUP BY deptno             -- �μ��� ����
    HAVING count(empno) <= 3    -- ����� ���� 3����
    ORDER BY deptno;            -- �μ��� ��������
