-- ��������
-- WITH: ���������� �̸� �����Ͽ� SELECT���� ���

SELECT e.empno, e.ename, d.deptno, d.dname
    FROM (SELECT * FROM emp WHERE deptno = 10) e, 
         (SELECT * FROM dept WHERE deptno = 10) d
    WHERE e.deptno = d.deptno;
         
         
-- WITH
-- ���������� �̸� �����Ͽ� SELECT���� ���
WITH
e AS (SELECT * FROM emp WHERE deptno = 10),
d AS (SELECT * FROM dept WHERE deptno = 10)
SELECT e.empno, e.ename, d.deptno, d.dname 
    FROM e,d    -- WITH���� ������ ��Ī�� ���
    WHERE e.deptno = d.deptno;


