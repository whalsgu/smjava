-- �׷��Լ�
-- GROUPING SETS: �� Į���� �׷�
-- ���� ������ �׷�ȭ Į���� ���� ���� ��
-- ���� ���� �������� ���

-- �ܰ躰(�μ���, ��å��)
SELECT deptno, job, count(*) FROM emp GROUP BY deptno, job;

-- �μ��� ����Ѽ�
SELECT deptno, count(deptno) FROM emp GROUP BY deptno;

-- ��å�� ����Ѽ�
SELECT job, count(job) FROM emp GROUP BY job;

-- �� �μ��� �����, ��å�� �����
SELECT deptno, job, count(*) 
    FROM emp 
    GROUP BY grouping sets(deptno, job)
    ORDER BY deptno, job;


