-- ���������� �̿��� �Է�
-- ���������� �̿��Ͽ� INSERET�� �ϴ� ���� VALUES ������ ����
-- ����:
--   1. Į���� ������ ��ġ
--   2. Į���� �ڷ����� ��ġ

-- ��ü ����� �޿����
SELECT e.*, s.*
    FROM emp e, salgrade s
    WHERE e.sal BETWEEN s.losal AND s.hisal;
    
-- ��ü ����� �޿������ 4����� ���
SELECT e.*, s.*
    FROM emp e, salgrade s
    WHERE e.sal BETWEEN s.losal AND s.hisal
    AND s.grade = 4;
    
-- ��ü ����� �޿������ 4����� ��� ���̺�
CREATE TABLE emp4 AS SELECT * FROM emp WHERE 1 <> 1;    -- �����̺�

-- ��ü ����� �޿������ 4����� ��� ���̺� �Է�
INSERT INTO emp4 
    SELECT e.*
        FROM emp e, salgrade s
        WHERE e.sal BETWEEN s.losal AND s.hisal
        AND s.grade = 4;
        
SELECT * FROM emp4;        

--------------------------------------------------------------------------------
-- ��ü ����� �޿������ 2����� ��� ���̺� �Է�
INSERT INTO emp4 (empno, ename, job, mgr, hiredate, sal, deptno)
    SELECT e.empno, e.ename, e.job, e.mgr, sysdate, e.sal, null
        FROM emp e, salgrade s
        WHERE e.sal BETWEEN s.losal AND s.hisal
        AND s.grade = 2;

SELECT * FROM emp4;        
    