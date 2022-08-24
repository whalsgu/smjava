-- ���̺� ��(View)
-- ���� ���̺�(Virtual Table)
-- ������ ���̺��� �ٸ� �������� �ٶ󺻴�.
-- DBMS�� ����� �����μ� ���������� �����ϴ� ���̺�ó�� ����� �� �ִ�.
-- ����:
--   1. ����(�̹� �ۼ��� ������ ���ؼ� �䰡 ������� �ֱ� ������ ���� ����)
--   2. ���ȼ�(������ ���̺��̳� ������ ����)

SELECT * FROM emp;
SELECT e.empno, e.ename, e.job, d.deptno, d.dname, d.loc
    FROM emp e, dept d
    WHERE e.deptno = d.deptno;
    
-- �� : ����
CREATE OR REPLACE VIEW emp_dept
    AS (SELECT e.empno, e.ename, e.job, d.deptno, d.dname, d.loc
    FROM emp e, dept d
    WHERE e.deptno = d.deptno);

SELECT * FROM USER_VIEWS;    

SELECT * FROM emp_dept;

-- �Է�(INSERT) : ���ο� ���� ������� ��� �Է��� �� �� ����.
-- ����: ORA-01776: ���� �信 ���Ͽ� �ϳ� �̻��� �⺻ ���̺��� ������ �� �����ϴ�.
INSERT INTO emp_dept VALUES (9999, 'NineNine', 'Student', 30, 'SALES', 'CHICAGO');

SELECT * from emp_dept;

-- �� ����
DROP VIEW EMP_DEPT;

