-- ���̺��� ������ ����
-- ���������� ����� ����


SELECT * FROM empx;
SELECT * FROM deptx;

-- �������� Į���� ���������� �����Ͽ� ����
-- �μ��ڵ尡 12�� �μ��� �̸��� ��ġ��
-- �μ��ڵ尡 41�� �μ��� �̸��� ��ġ�� ����
UPDATE deptx
    SET (dname, loc) = (SELECT dname, loc FROM deptx WHERE deptno = 41)
    WHERE deptno = 12;

-- �� Į������ �˻������� �ٸ� ��    
-- �� Į������ ���������� �����Ͽ� ����
UPDATE deptx
    SET dname = (SELECT dname FROM deptx WHERE deptno = 13),
        loc = (SELECT loc FROM deptx WHERE deptno = 44)
    WHERE deptno IN (11,21,31,41);
        