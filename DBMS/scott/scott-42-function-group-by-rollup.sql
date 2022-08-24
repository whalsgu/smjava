-- �׷��Լ�
-- GROUP BY ROLLUP
-- �׷��Լ��� ������ Į�� �ܰ躰 ����(�ߴܴܰ�, ��ü)
-- �߰� �ܰ� : ������ Į���� ����ŭ ����
-- ��ü ���� : �� ������ ���� ���


-- (�μ���, ��å��) ����Ѽ�, �ְ�޿�, �޿��Ѿ�, ��ձ޿���
SELECT deptno, job, count(*), max(sal), sum(sal), trunc(avg(sal))
    FROM emp
    GROUP BY deptno, job
    ORDER BY deptno, job;
    
-- ROLLUP: �� �׷캰�� ����
-- 1�ܰ� : deptno ����
-- 2�ܰ� : ��ü ����
SELECT deptno, job, count(*), max(sal), sum(sal), trunc(avg(sal))
    FROM emp
    GROUP BY ROLLUP(deptno, job)
    ORDER BY deptno, job;
    
    
-- GROUP BY deptno, rollup(job)
-- �μ��ڵ�� �׷�ȭ�� �ϰ� ��å���� ����
-- ��å(job) ������ ����
SELECT deptno, job, count(*), max(sal), sum(sal), trunc(avg(sal))
    FROM emp
    GROUP BY deptno, ROLLUP(job)
    ORDER BY deptno, job;
    