-- ǥ�� SQL: ISO/ANSI(SQL-99)

-- �ڿ�����(natural join)
-- ����� �Ǵ� �� ���̺� �̸��� �ڷ����� ���� Į���� �������� �����(equal join)�� �Ѵ�.
-- ���̺� ��Ī�� �ٿ��� Į������ ����� �� ����.
-- ���εǴ� Į���� ���̺���� ���� �� ����.

-- NATURAL JOIN    
SELECT empno, ename, job, deptno, dname, loc
    FROM emp natural join dept
    ORDER BY 1,2;
    
-- JOIN ~ USING
-- ���εǴ� Į���� ������ �̸��� Ÿ���̾�� �Ѵ�.
-- ���εǴ� Į���� ���̺� �ĺ��ڸ� ������ �� ����.
SELECT e.empno, e.ename, e.job, deptno, d.dname, d.loc
    FROM emp e join dept d using(deptno)
    ORDER BY 1,2;
    
-- ���̺� : emp, dept2    
-- ���εǴ� Į��: empno, deptno
SELECT empno, deptno, e.ename, e.job, d.dname, d.loc
    FROM emp e join dept2 d using(empno, deptno)
    ORDER BY 1,2;
    
    
-- JOIN ~ ON
-- ���� ������ ���
-- ����� �Ҽ� �μ��ڵ带 �����Ͽ� �μ����� Ȯ��
SELECT e.empno, e.ename, e.job, e.deptno, d.deptno, d.dname, d.loc
    FROM emp e join dept d on(e.deptno = d.deptno)
    ORDER BY 1,2;
    
-- �Ҽӵ��� ���� �μ� ���� ����: e.deptno != d.deptno
SELECT e.empno, e.ename, e.job, e.deptno, d.deptno, d.dname, d.loc
    FROM emp e join dept d on(e.deptno != d.deptno)
    ORDER BY 1,2;

-- �Ҽӵ��� ���� �μ� ���� �����Ͽ� ���� : �Ҽӵ� �μ�
-- not e.deptno != d.deptno
SELECT e.empno, e.ename, e.job, e.deptno, d.deptno, d.dname, d.loc
    FROM emp e join dept d on(not (e.deptno != d.deptno))
    ORDER BY 1,2;
    
-- �μ��� ��ġ�� ��Ұ� 'CHICAGO', 'NEW YORK'�� �μ��� ����
SELECT e.empno, e.ename, e.job, e.deptno, d.deptno, d.dname, d.loc
    FROM emp e join dept d on(d.loc IN('CHICAGO', 'NEW YORK') AND e.deptno = d.deptno)
    ORDER BY 1,2;
    
