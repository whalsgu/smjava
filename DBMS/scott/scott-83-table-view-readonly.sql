-- ���̺� ��(View)
-- ���� ���̺�(Virtual Table)
-- ������ ���̺��� �ٸ� �������� �ٶ󺻴�.
-- DBMS�� ����� �����μ� ���������� �����ϴ� ���̺�ó�� ����� �� �ִ�.
-- ����:
--   1. ����(�̹� �ۼ��� ������ ���ؼ� �䰡 ������� �ֱ� ������ ���� ����)
--   2. ���ȼ�(������ ���̺��̳� ������ ����)

-- �並 ������ ����: 
-- �ɼ� : WITH READ ONLY
CREATE OR REPLACE VIEW emp_dept30
    AS (SELECT * FROM emp WHERE deptno = 30) WITH READ ONLY;

SELECT * FROM USER_VIEWS;    

-- �Է�(INSERT)
-- ���� : cannot perform a DML operation on a read-only view
INSERT INTO emp_dept30 VALUES (9999, 'NineNine', 'Student', null, null, 1000, 500, 10);


SELECT * from emp_dept30;

-- �� ����
DROP VIEW EMP_DEPT30;

