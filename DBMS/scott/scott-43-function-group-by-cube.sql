-- �׷��Լ�
-- GROUP BY CUBE
-- �׷��Լ��� ������ Į�� �ܰ躰 ����(�ߴܴܰ�, ��ü)
-- �߰� �ܰ� : ������ Į���� ����ŭ ����
-- ��ü ���� : �� ������ ���� ���


-- (�μ���, ��å��) ����Ѽ�, �ְ�޿�, �޿��Ѿ�, ��ձ޿���
SELECT deptno, job, count(*), max(sal), sum(sal), trunc(avg(sal))
    FROM emp
    GROUP BY deptno, job
    ORDER BY deptno, job;
    
-- CUBE: �� �׷캰�� ����
-- 1�ܰ� : deptno ����
-- 2�ܰ� : job�� ����(rollup�� ����)
-- 3�ܰ� : ��ü ����
SELECT deptno, job, count(*), max(sal), sum(sal), trunc(avg(sal))
    FROM emp
    GROUP BY CUBE(deptno, job)
    ORDER BY deptno, job;
    
    
-- GROUP BY deptno, cube(job)
-- GROUP BY deptno, rollup(job)
-- �μ��ڵ�� �׷�ȭ�� �ϰ� ��å���� ����
-- rollup, cube�� ������ ���
-- ��å(job) ������ ����
SELECT deptno, job, count(*), max(sal), sum(sal), trunc(avg(sal))
    FROM emp
    -- GROUP BY deptno, ROLLUP(job)
    GROUP BY deptno, CUBE(job)
    ORDER BY deptno, job;
    