-- ���̺� ��(View)
-- ���� ���̺�(Virtual Table)
-- ������ ���̺��� �ٸ� �������� �ٶ󺻴�.
-- DBMS�� ����� �����μ� ���������� �����ϴ� ���̺�ó�� ����� �� �ִ�.
-- ����:
--   1. ����(�̹� �ۼ��� ������ ���ؼ� �䰡 ������� �ֱ� ������ ���� ����)
--   2. ���ȼ�(������ ���̺��̳� ������ ����)

-- ��� ���̺��� �μ��ڵ尡 30�� ���
SELECT * FROM emp WHERE deptno = 30;

-- ��������
SELECT emp.*
    FROM (SELECT * FROM emp WHERE deptno = 30) emp;
    
-- ���̺� �� ����
-- SYSTEM
-- GRANT CREATE VIEW TO SCOTT;

CREATE VIEW emp_dept30
    AS (SELECT * FROM emp WHERE deptno = 30);
    
SELECT * from emp_dept30;
    
-- ���� ����ڰ� ������ �ִ� ���̺� ���    
SELECT * FROM TAB;    

-- ����(DICT)
SELECT * FROM USER_VIEWS;

-- �� ���̺� ����
DROP VIEW EMP_DEPT30;
