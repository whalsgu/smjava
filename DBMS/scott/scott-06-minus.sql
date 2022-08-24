-- ���տ�����
-- ������(MINUS)
-- ������ �ۼ��� SELECT���� ������� ������ �ۼ��� SELECT���� ����� ��(������) ����� ����

-- ����������� �μ��� 10�� �ƴ� ��������� ���
SELECT * FROM emp -- ����
MINUS
SELECT * FROM emp WHERE deptno = 10; -- ����

-- ����������� �μ��� 10, 20�� �ƴ� ��������� ���
SELECT * FROM emp -- ����
MINUS
SELECT * FROM emp WHERE deptno = 10
MINUS
SELECT * FROM emp WHERE deptno = 20;

-- ����������� �μ��� 10, 20, 30�� �ƴ� ��������� ���
-- �μ�(10,20,30)�� ������ ����� �������� ����
SELECT * FROM emp -- ����
MINUS
SELECT * FROM emp WHERE deptno = 10
MINUS
SELECT * FROM emp WHERE deptno = 20
MINUS
SELECT * FROM emp WHERE deptno = 30;

-- ���̺�(emp) - ���̺�(emp2)
-- ��ü ������� ���޿��Ѿ��� 36000���� ���ų� ���� ��� ����
SELECT empno, ename, sal, sal*12 as annual FROM emp
MINUS
SELECT * FROM emp2 WHERE annual < 36000;

-- ������
SELECT * FROM emp WHERE ename = 'KING'
UNION ALL
SELECT * FROM emp3 WHERE ename = 'KING';

-- ���̺�(emp) - ���̺�(emp3)
SELECT * FROM emp
MINUS
SELECT * FROM emp3;

-- ���̺�(emp2) - ���̺�(emp3)
SELECT empno, ename FROM emp2
MINUS
SELECT empno, ename FROM emp3;

