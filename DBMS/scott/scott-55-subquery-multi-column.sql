-- ���߿� ��������(Multiple Column Sub-Query)
-- �˻� Į���� �������� ���, �������� ��������

-- �μ��� �ְ� �޿���
SELECT deptno, max(sal) FROM emp GROUP BY deptno;

-- ���߿� ��������
SELECT * FROM emp
    WHERE (deptno, sal) IN (SELECT deptno, max(sal) FROM emp GROUP BY deptno);
    
-- ���������� ����    
SELECT * FROM emp
    WHERE deptno IN (SELECT deptno FROM emp GROUP BY deptno)
    AND sal IN (SELECT max(sal) FROM emp GROUP BY deptno);
    
SELECT * FROM emp WHERE sal IN (SELECT max(sal) FROM emp GROUP BY deptno);