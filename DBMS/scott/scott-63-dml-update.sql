-- ���̺��� ������ ����
/*
    UPDATE ���̺��
        SET Į��1 = ������1,
            Į��2 = ������2,
            Į��3 = ������3,
            ...
            Į��N = ������N
        [ WHERE ���ǽ� ]
*/        

SELECT * FROM empx;
SELECT * FROM deptx;

-- �μ����̺��� ��� �μ���ġ�� 'SEOUL'�� ����
-- WHERE���� ���� ������ ���̺��� ��� �����Ͱ� ����
UPDATE deptx SET loc = 'SEOUL';

-- �μ��̸��� '������'�� �μ��� ��ġ�� 'SEONGNAM'���� ����
UPDATE deptx SET loc = 'SEONGNAM'
    WHERE dname like '������%';

-- �μ��̸��� ���� �μ��� �̸��� '������'�� �����ϰ�
-- �μ���ġ�� '����'�� ����
-- WHERE dname = null�� �ϸ� ã�� ����
UPDATE deptx 
    SET dname = '������',
        loc = '����'
    WHERE dname IS NULL;
    
-- [����]
-- �ӽ� ��� ���̺�(empx)���� �޿��� 2000������ ����� 
-- ���翡 500�� �߰��϶�.
INSERT INTO empx SELECT * FROM emp;
SELECT * FROM empx;

SELECT * FROM empx WHERE sal <= 2000;

-- comm�� null�� ����� ����(������ ���� ����)
UPDATE empx
    SET comm = comm + 500
    WHERE sal <= 2000;

-- comm�� null�̸� 500�� �����ϰ�
-- comm�� null�� �ƴϸ� comm + 500�� ����
-- nvl2(col, col�� null�� �ƴϸ�, col�� null�̸�)
UPDATE empx
    SET comm = nvl2(comm, comm + 500, 500) 
    WHERE sal <= 2000;

-- Ȯ��
SELECT e1.empno, e1.ename, e1.sal, e1.comm, e2.comm
    FROM emp e1, empx e2
    WHERE e1.sal <= 2000
    AND e1.empno = e2.empno;
    
-- [����] ����?
-- empx.comm - emp.comm -> 500���� ū ���� ������ ������ �߸��� ������
SELECT e1.empno, e1.ename, e1.sal, e1.comm, e2.comm, nvl2(e2.comm, e2.comm, 0) - nvl2(e1.comm, e1.comm, 0) as commx
    FROM emp e1, empx e2
    WHERE e1.sal <= 2000
    AND e1.empno = e2.empno
    AND (nvl2(e2.comm, e2.comm, 0) - nvl2(e1.comm, e1.comm, 0)) > 500;
