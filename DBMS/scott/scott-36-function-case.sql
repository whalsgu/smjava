-- CASE
-- CASE �˻簪(Į��)
--      WHEN ����1 THEN ���1
--      WHEN ����2 THEN ���2
--      WHEN ����3 THEN ���3
--      ELSE ���N
-- END AS ALIAS

-- [CASE]
-- ��å�� MANAGER�� ���:  �޿��� 10%�� ����
-- ��å�� SALESMAN�� ���: �޿��� 20%�� ����
-- ��å�� ANALYST�� ���:  �޿��� 30%�� ����
-- �������� �޿��� 5%�� ����
-- �ڹ��� switch ���� ����
SELECT ename, sal, job,
    CASE job
        WHEN 'MANAGER'  THEN sal * 0.1
        WHEN 'SALESMAN' THEN sal * 0.2
        WHEN 'ANALYST'  THEN sal * 0.3
        ELSE sal * 0.05
    END AS upsal
    FROM emp;
    
-- �˻簪(���ذ�)���� ���ǽĸ� ���    
SELECT ename, sal, job,
    CASE
        WHEN job = 'MANAGER'  THEN sal * 0.1
        WHEN job = 'SALESMAN' THEN sal * 0.2
        WHEN job = 'ANALYST'  THEN sal * 0.3
        ELSE sal * 0.05
    END AS upsal
    FROM emp;
    
-- ����
-- �پ��� ���ǿ� ���� ó��
-- �ڹ��� if ���� ����
SELECT ename, sal, job, comm,
    CASE 
        WHEN comm is null THEN sal * 1.5
        WHEN comm = 0 THEN sal * 1.4
        WHEN comm > 0 THEN sal + comm
        ELSE sal
    END AS upsal
    FROM emp;
    
