-- �������� : ������ ��������(MULTI-ROW SUBQUERY)
-- ���������� ���� ����� ���� �� ������ ���
-- ������ ������: IN, ANY, SOME, ALL, EXISTS

-- [IN]
-- ���������� ��ȯ�� ���� �������
-- ���������� ���ǽİ� �ϳ��� ������
-- �������� ���ǽ��� TRUE�� ��ȯ

--------------------------------------------------------------------------------
-- ����߿��� �μ��ڵ尡 10 �̰ų�(or) 20�� ���
SELECT * FROM emp WHERE deptno IN(10,20) ORDER BY deptno;

--------------------------------------------------------------------------------
-- �μ��� �ְ� �޿���
SELECT deptno, max(sal) FROM emp GROUP BY deptno;

-- �μ��� �ְ� �޿����� �޴� �������
SELECT * FROM emp WHERE sal in (2850, 3000, 5000);
SELECT * FROM emp WHERE sal in (SELECT max(sal) FROM emp GROUP BY deptno);

--------------------------------------------------------------------------------
-- �μ��� ���� �޿���
SELECT deptno, min(sal) FROM emp GROUP BY deptno;

-- �μ��� ���� �޿����� �޴� �������
SELECT * FROM emp WHERE sal in (800, 950, 1300);
SELECT * FROM emp WHERE sal in (SELECT min(sal) FROM emp GROUP BY deptno);

--------------------------------------------------------------------------------
-- ������� �Ҽӵ� �μ�
SELECT * FROM dept
    WHERE deptno IN (SELECT distinct deptno FROM emp);

-- ����� ������ ���� ���� �μ�
SELECT * FROM dept
    WHERE deptno NOT IN (SELECT distinct deptno FROM emp);
    
SELECT * FROM dept 
    WHERE deptno NOT IN (SELECT deptno FROM emp GROUP BY deptno);    
