-- ���̺� ������ �����ϱ� : DELETE
-- DELETE [FROM] ���̺��̸� [WHERE ���ǹ�]

CREATE TABLE deptx2 AS SELECT * FROM deptx;
SELECT * FROM deptx2;

DELETE FROM deptx2;
DELETE deptx2;

DELETE FROM deptx2 WHERE loc LIKE '����%';

-- [����] �ӽ����̺� empx���� 
-- �޿������ ��� ������ ������ �ʴ� ��� ����� ����
SELECT * FROM empx;
SELECT * FROM salgrade;

-- �޿������ ��� ������ ������ �ʴ� ��� ��� ����
SELECT * FROM empx WHERE sal < 700 OR sal > 9999;
CREATE TABLE empx1 AS SELECT * FROM empx;
SELECT * FROM empx1 WHERE sal < 700 OR sal > 9999;

-- �޿���� ������ �ִ� ���
SELECT e.* 
    FROM empx1 e, salgrade s
    WHERE e.sal BETWEEN s.losal AND s.hisal;

-- ������ ������ �˻�
SELECT * FROM empx1
    WHERE empno NOT IN(SELECT e.empno
        FROM empx1 e, salgrade s
        WHERE e.sal BETWEEN s.losal AND s.hisal);

-- �˻��� �����͸� ����
DELETE FROM empx1
    WHERE empno NOT IN(SELECT e.empno
        FROM empx1 e, salgrade s
        WHERE e.sal BETWEEN s.losal AND s.hisal);

SELECT * FROM empx1;

