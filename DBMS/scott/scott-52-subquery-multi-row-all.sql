-- �������� : ������ ��������(MULTI-ROW SUBQUERY)
-- ���������� ���� ����� ���� �� ������ ���
-- ������ ������: IN, ANY, SOME, ALL, EXISTS

-- [ALL]
-- ���������� ��ȯ�� ���� �����
-- ���������� ���ǽ� ����� ����� ���(ALL) ������ 
-- �������� ���ǽ��� TRUE�� ��ȯ

--------------------------------------------------------------------------------
-- �μ��ڵ尡 30�� ����� �޿� ����
SELECT * FROM emp WHERE deptno = 30 ORDER BY sal;

-- �μ��ڵ尡 30�� ������� �ּ� �޿����� �� ���� �޿��� �޴� ��� ����
-- JAMES : 950
SELECT * FROM emp 
    WHERE sal < ALL (SELECT sal FROM emp WHERE deptno = 30)
    ORDER BY sal, empno;
    
-- [����] �׷��Լ��� ��ȯ
-- �μ��ڵ尡 30�� ������� �ּ� �޿����� �� ���� �޿��� �޴� ��� ����
SELECT * FROM emp 
    WHERE sal < (SELECT min(sal) FROM emp WHERE deptno = 30)
    ORDER BY sal, empno;

--------------------------------------------------------------------------------
-- �μ��ڵ尡 30�� ������� �ְ� �޿����� �� ���� �޿��� �޴� ��� ����
-- BLAKE : 2850
SELECT * FROM emp 
    WHERE sal > ALL (SELECT sal FROM emp WHERE deptno = 30)
    ORDER BY sal, empno;

-- [����] �׷��Լ��� ��ȯ
-- �μ��ڵ尡 30�� ������� �ְ� �޿����� �� ���� �޿��� �޴� ��� ����
SELECT * FROM emp 
    WHERE sal > (SELECT max(sal) FROM emp WHERE deptno = 30)
    ORDER BY sal, empno;


--------------------------------------------------------------------------------
-- �μ��ڵ尡 30�� ������ ������ �޿��� �޴� ���
-- ����: �� ����� ����� �޿��� �ϳ���.
-- �������� ����
SELECT * FROM emp 
    WHERE sal = ALL (SELECT sal FROM emp WHERE deptno = 30)
    ORDER BY sal, empno;

--------------------------------------------------------------------------------
-- �޿��� 1300 �޴� ���
-- ��� ���� �ϳ��� ��츦 �����ϴ� ���� ���� �� �ִ�.
-- �������� ����
SELECT * FROM emp 
    WHERE sal = ALL (SELECT sal FROM emp WHERE sal = 1300)
    ORDER BY sal, empno;

