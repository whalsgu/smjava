-- ���̺� ��(View)
-- ���� ���̺�(Virtual Table)
-- ������ ���̺��� �ٸ� �������� �ٶ󺻴�.
-- DBMS�� ����� �����μ� ���������� �����ϴ� ���̺�ó�� ����� �� �ִ�.
-- ����:
--   1. ����(�̹� �ۼ��� ������ ���ؼ� �䰡 ������� �ֱ� ������ ���� ����)
--   2. ���ȼ�(������ ���̺��̳� ������ ����)

CREATE VIEW emp_dept30
    AS (SELECT * FROM emp WHERE deptno = 30);
    
SELECT * from emp_dept30;

-- �Է�(INSERT) ����
-- ������ �ݿ�
INSERT INTO emp_dept30 (empno, ename, job, deptno)
    VALUES (1234, 'ABCDE', 'STUDENT', 30);
    
-- VIEW�� ������ �� ����� �˻����ǿ� �ش����� �ʾƵ� ������ �Է��� ����
-- ������ �ݿ�
INSERT INTO emp_dept30 (empno, ename, job, deptno)
    VALUES (4321, 'EDCBA', 'STUDENT', 20);

ROLLBACK;
SELECT * FROM emp;    

-- �� ���̺� ����
-- �並 ���ؼ� �Է�(INSERT)�� �� ROLLBACK�� ���� �ʰ� 
-- DROP TABLE VIEW�� �ϸ� �Է��� ������ Ŀ��(COMMIT)�� �ȴ�.
DROP VIEW EMP_DEPT30;

DELETE FROM EMP WHERE empno in (1234, 4321);
commit;
