-- �������� : ������ ��������(MULTI-ROW SUBQUERY)
-- ���������� ���� ����� ���� �� ������ ���
-- ������ ������: IN, ANY, SOME, ALL, EXISTS

-- [ANY, SOME]
-- ���������� ��ȯ�� ���� �������
-- ���������� ���ǽİ� �ϳ��� ������
-- �������� ���ǽ��� TRUE�� ��ȯ

-- �μ��� �ְ� �޿���
SELECT deptno, max(sal) FROM emp GROUP BY deptno;

-- [ANY]
-- �� �μ��� �ְ� �޿��� ������ �޿��� �޴� ��� ����
SELECT * FROM emp
    WHERE sal = ANY (SELECT max(sal) FROM emp GROUP BY deptno);
    
-- [SOME]
-- �� �μ��� �ְ� �޿��� ������ �޿��� �޴� ��� ����
SELECT * FROM emp
    WHERE sal = SOME (SELECT max(sal) FROM emp GROUP BY deptno);
    
-- �μ��ڵ�(30)�� �ְ� �޿��� �޴� ������� ���� �޿��� �޴� ��� �������
-- �ְ�޿���(2850) ���� ���� �޿��� �޴� ���
SELECT * 
    FROM emp
    WHERE sal < ANY (SELECT sal FROM emp WHERE deptno = 30)
    ORDER BY sal desc, empno;
    
SELECT * 
    FROM emp
    WHERE sal < SOME (SELECT sal FROM emp WHERE deptno = 30)
    ORDER BY sal desc, empno;
    
-- �׷��Լ�: 
-- max(sal)���� ���� �޿��� �޴� ���
SELECT * 
    FROM emp
    WHERE sal < (SELECT max(sal) FROM emp WHERE deptno = 30)
    ORDER BY sal desc, empno;

--------------------------------------------------------------------------------
-- �μ��ڵ�(30)�� ���� �޿��� �޴� ������� ���� �޿��� �޴� ��� �������
-- �����޿���(?) ���� ���� �޿��� �޴� ���
-- �����ݿ��� : 950���� ���� �޿��� �޴� ���

SELECT * 
    FROM emp
    WHERE sal > ANY (SELECT sal FROM emp WHERE deptno = 30)
    ORDER BY sal asc, empno;
    
SELECT * 
    FROM emp
    WHERE sal > SOME (SELECT sal FROM emp WHERE deptno = 30)
    ORDER BY sal desc, empno;
    
-- �׷��Լ�: 
-- min(sal)���� ���� �޿��� �޴� ��� : 950
SELECT * 
    FROM emp
    WHERE sal > (SELECT min(sal) FROM emp WHERE deptno = 30)
    ORDER BY sal desc, empno;
