-- ���ڿ� �Լ� : ���ڿ� ���� �Լ�
-- substr(������, ������ġ, �������)
-- ������ġ : 1����, ���̳ʽ�(minus)�̸� ������ ��ġ���� ����
-- ������� : �����ϸ� ���ڿ��� ������
-- ������ : 
--   -> ������ null
--   -> ������̺��� ������ ���ڿ��� ������  

-- 1��°���� 2���� ���ڸ� ����
SELECT job, substr(job, 1, 2) FROM emp;

-- 6��° ��ġ���� 3���� ���ڸ� ����
SELECT job, substr(job, 6, 3) FROM emp;

-- 5��° ��ġ���� ������(����)
SELECT job, substr(job, 5) FROM emp;

-- 1��°�� 4�ڸ� ����
SELECT job, substr(job, 2, 4) FROM emp;

-- ������ġ�� ���̳ʽ�(minus)�� ����
-- ���ڿ��� ���������� ������ 3�ڸ��� �̵��ؼ� 3���� ����
SELECT job, substr(job, -3, 3) FROM emp;

-- ������ġ�� ���̳ʽ��� �����ߴµ� �� ��ġ�� length ���� ������? 
-- �����? null
SELECT job, substr(job, -30, 3) FROM emp;


-- ������ġ�� �÷����� �ؼ� ��ü ���̿� ���ڿ��� ����?
SELECT empno, ename, job, substr(job, 1, length(job)) FROM emp;
SELECT empno, ename, job, substr(job, 1) FROM emp;


-- ������ġ�� ���̳ʽ��� �ؼ� ��ü ���̿� ���ڿ��� ����?
SELECT empno, ename, job, substr(job, -length(job), length(job)) FROM emp;
SELECT empno, ename, job, substr(job, -length(job)) FROM emp;
SELECT empno, ename, job, substr(job, length(job) * -1) FROM emp;

SELECT job, length(job), length(job) * -1 FROM emp;

