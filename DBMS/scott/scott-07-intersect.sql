-- ���� ������
-- ������(INTERSECT)
-- ������ �����͸� ����
-- ���� �����ʹ� �ϳ��� ����

-- �� ���� ���̺��� ��� Į������ ������ ������
SELECT * FROM emp
INTERSECT
SELECT * FROM emp3;

-- �� ���� ���̺��� ��å(job) Į������ ������ ������
SELECT job FROM emp
INTERSECT
SELECT job FROM emp3;

-- �� ���� ���̺��� �޿�(sal) Į������ ������ ������
SELECT sal FROM emp
INTERSECT
SELECT sal FROM emp2
INTERSECT
SELECT sal FROM emp3;


