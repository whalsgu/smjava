-- DECODE
-- IF, SWITCH~CASE���� ����
-- DECODE(�˻簪, ����1, ���1, ����2, ���2, ... ���N)
-- �˻簪�� ����1�� �����ϸ� ���1 ����
-- �˻簪�� ����2�� �����ϸ� ���2 ����
-- �˻簪�� �����ϴ� ������ ������ ���N


-- ������ NULL�� �ƴϸ� �޿� + ���� = �ѱ޿�
SELECT ename, sal, comm, decode(comm, null, sal, sal + comm) FROM emp;

-- ��å�� MANAGER�� ���:  �޿��� 10%�� ����
-- ��å�� SALESMAN�� ���: �޿��� 20%�� ����
-- ��å�� ANALYST�� ���:  �޿��� 30%�� ����
-- �������� �޿��� 5%�� ����
SELECT ename, sal, job,
    decode(job,
        'MANAGER',  sal * 0.1,
        'SALESMAN', sal * 0.2,
        'ANALYST',  sal * 0.3, sal * 0.05) upsal
    FROM emp;

