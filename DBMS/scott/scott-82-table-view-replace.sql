-- ���̺� ��(View)
-- ���� ���̺�(Virtual Table)
-- ������ ���̺��� �ٸ� �������� �ٶ󺻴�.
-- DBMS�� ����� �����μ� ���������� �����ϴ� ���̺�ó�� ����� �� �ִ�.
-- ����:
--   1. ����(�̹� �ۼ��� ������ ���ؼ� �䰡 ������� �ֱ� ������ ���� ����)
--   2. ���ȼ�(������ ���̺��̳� ������ ����)

CREATE VIEW emp_dept30
    AS (SELECT * FROM emp WHERE deptno = 30);

-- �䰡 ������ �����ϰ� ������ �����϶�.
CREATE OR REPLACE VIEW emp_dept30
    AS (SELECT * FROM emp WHERE deptno = 30);

-- ����: ���ο� ������ ���� ����
CREATE OR REPLACE VIEW emp_dept30
    AS (SELECT * FROM emp WHERE deptno = 20);
    
-- �̸� ����    
RENAME emp_dept30 TO emp_dept20;    
SELECT * FROM USER_VIEWS;    
    
SELECT * from emp_dept20;

-- �� ����
DROP VIEW EMP_DEPT20;

