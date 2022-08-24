-- ǥ�� SQL: ISO/ANSI(SQL-99)

-- �ڿ�����(natural join)
-- ����� �Ǵ� �� ���̺� �̸��� �ڷ����� ���� Į���� �������� �����(equal join)�� �Ѵ�.
-- ���̺� ��Ī�� �ٿ��� Į������ ����� �� ����.
-- ���εǴ� Į���� ���̺���� ���� �� ����.

-- ����: emp.deptno
-- ���εǴ� Į���� �տ� ���̺���� ����� �� ����.
-- SELECT empno, ename, emp.job, emp.deptno, dname, loc
-- FROM emp natural join dept
-- ORDER BY 1,2;

-- �����(equal join), ��������, ��������, �ܼ�����
SELECT * FROM emp e, dept d 
    WHERE e.deptno = d.deptno 
    ORDER BY e.empno;
    
-- NATURAL JOIN    
SELECT empno, ename, job, deptno, dname, loc
    FROM emp natural join dept
    ORDER BY 1,2;
    
SELECT '[natural join]' as title, empno, ename, job, deptno, dname, loc
    FROM emp natural join dept
    ORDER BY 1,2;    

-- ���̺� dept2�� empno Į���� �߰�
-- �ڿ��������� ��ġ�Ǵ� Į���� 2���� ���
CREATE TABLE dept2 AS
    SELECT deptno, dname, loc, empno
    FROM emp natural join dept;
    
DESC dept2;

-- �ڿ����� : join emp, dept2
SELECT empno, ename, job, deptno, dname, loc
    FROM emp natural join dept2
    ORDER BY 1,2;    
    
-- ����� : join emp, dept2
SELECT * FROM emp e, dept2 d 
    WHERE e.deptno = d.deptno 
    AND e.empno = d.empno
    ORDER BY e.empno;
    
