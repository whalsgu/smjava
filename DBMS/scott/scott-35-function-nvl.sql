-- NULL
-- nvl(������, ��ü��)
-- �����Ͱ� NULL�̸� ��ü���� ����
-- nvl2(������, null�� �ƴҰ�� ��ü��, null�� ��� ��ü��)

-- ����(comm)�� null�� ��� 
SELECT ename, sal, comm FROM emp;

-- �޿� + ����: null�� ��� ��� null
SELECT ename, sal, comm, sal + comm FROM emp;

-- ������ null�� ��� 0���� ó��
SELECT ename, sal, comm, nvl(comm, 0), sal + nvl(comm, 0) FROM emp;

------------------------------------------------------------------------
-- nvl2(������, null�� �ƴҰ�� ��ü��, null�� ��� ��ü��)
SELECT ename, sal, comm, nvl2(comm, 'O', 'X') comm2 from emp;

-- ������ ������ �޿��� ���� * 3
-- ������ ������ �޿��� ����
SELECT ename, sal, comm, nvl2(comm, comm * 3, 0), sal + nvl2(comm, comm * 3, 0) as total from emp;
