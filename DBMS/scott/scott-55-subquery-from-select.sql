-- �������� : FROM���� ����ϴ� ��������
-- �ζ��� ��(INLINE VIEW)
-- ���̺� ��ü�� �ƴ϶� SELECT ���� ���� �Ϻ� �����͸� �����ؼ� ���

-- �μ��� 10�� ����� ����
SELECT e.empno, e.ename, d.deptno, d.dname
    FROM emp e, dept d
    WHERE e.deptno = d.deptno
    AND e.deptno = 10;

-- FROM���� ������ ����� ���̺�ó�� ���
SELECT e.empno, e.ename, d.deptno, d.dname
    FROM (SELECT * FROM emp WHERE deptno = 10) e, dept d
    WHERE e.deptno = d.deptno;

-- ���εǴ� ��� ���̺��� �˻� ����� �̸� �����ؼ� ����
-- ���������� WHERE ������ �ʿ� ����.
-- ����: �����Ǵ� ������ �����̹Ƿ� ���� ������ WHERE ������ �ʿ����.
SELECT e.empno, e.ename, d.deptno, d.dname
    FROM (SELECT * FROM emp WHERE deptno = 10) e, 
         (SELECT * FROM dept WHERE deptno = 10) d;
         
--------------------------------------------------------------------------------         
-- �μ��� 10, 20�� ����� ����
SELECT e.empno, e.ename, d.deptno, d.dname
    FROM emp e, dept d
    WHERE e.deptno = d.deptno
    AND e.deptno IN (10, 20);

-- FROM���� ������ ����� ���̺�ó�� ���
SELECT e.empno, e.ename, d.deptno, d.dname
    FROM (SELECT * FROM emp WHERE deptno IN(10,20)) e, dept d
    WHERE e.deptno = d.deptno;

-- ���εǴ� ��� ���̺��� �˻� ����� �̸� �����ؼ� ����
SELECT e.empno, e.ename, e.deptno, d.deptno, d.dname
    FROM (SELECT * FROM emp WHERE deptno IN (10,20)) e, 
         (SELECT * FROM dept WHERE deptno IN (10,20)) d
    -- ����: īƼ�þ� ���δ���, ũ�ν� ����, ���� �������� 
    -- �����Ͱ� �ߺ��ؼ� ����ǹǷ� ���������� WHERE�� ��� �Ѵ�.
    WHERE e.deptno = d.deptno
    ORDER BY 1;
         
         
    