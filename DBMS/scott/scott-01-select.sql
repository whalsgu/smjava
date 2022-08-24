
-- ��ȸ

-- ���̺� ���� 
desc emp;

-- ����� ��ȸ : ������(selection)
-- SELECT Į����, Į����, ... FROM ���̺��;
SELECT * FROM emp;
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno FROM emp;
SELECT emp.empno, emp.ename, emp.job, emp.mgr, emp.hiredate, emp.sal, emp.comm, emp.deptno FROM emp;
SELECT e.empno, e.ename, e.job, e.mgr, e.hiredate, e.sal, e.comm, e.deptno FROM emp e;

SELECT empno, ename FROM emp;

-- �˻����� : WHERE �˻�����
SELECT * FROM emp WHERE empno = 7844;   -- ����
SELECT * FROM emp WHERE empno != 7844;  -- �����ʴ�.
SELECT * FROM emp WHERE deptno = 30;    -- deptno�� 30�� ������

-- ����(join) : ���� ���̺��� �����ؼ� ��ȸ
-- �μ�: emp.deptno = dept.deptno
SELECT emp.empno, emp.ename, emp.deptno, dept.deptno, dept.dname, dept.loc
    FROM emp, dept
    WHERE emp.deptno = dept.deptno;

-- ���, �μ� ���̺��� �Ҽӵ� �μ����� �����ϰ�
-- �μ��ڵ尡 30(SALES)�� ����� �˻�
SELECT emp.empno, emp.ename, emp.deptno, dept.deptno, dept.dname, dept.loc
    FROM emp, dept
    WHERE emp.deptno = 30 
    AND emp.deptno = dept.deptno;

-- ����� �μ��ڵ�
SELECT deptno FROM emp;

-- �ߺ�����: �ڿ� ������ Į���������� �ߺ��� �����Ͽ� �ϳ��� ���ڸ� ���
-- �����μ� �ڵ�� �ϳ��� ���
SELECT DISTINCT deptno FROM emp;

-- �������(���, �̸�, ��å, ���ӻ���� ���, �Ի�����, �޿�, ����, �ҼӺμ��ڵ�)
SELECT * FROM emp;

-- ��å, �μ��ڵ�
-- ����(sort) : �⺻(��������), ORDER BY
-- �������� : asc
-- �������� : desc
SELECT job, deptno FROM emp ORDER BY job, deptno;

-- �������� 
SELECT job, deptno FROM emp ORDER BY job desc, deptno desc;

-- �ߺ����� : ��å, �μ� ����
-- DISTINCT �ڿ� ���� ��� Į���� ���� �ߺ� üũ
SELECT DISTINCT job, deptno FROM emp ORDER BY job, deptno;

-- ����� �����ϹǷ� �ߺ������� �ǹ̰� ���

SELECT DISTINCT job, deptno, empno FROM emp ORDER BY job, deptno;

-- ����: ORDER BY
-- �Ի����� �� ����
SELECT * FROM emp ORDER BY hiredate;  -- �Ի����� ���� ���� ��� ����
SELECT * FROM emp ORDER BY hiredate desc;  -- �Ի����� �ֱ� ��� ����

-- ��Ʈ Į���� ��ġ�� ���ڷ� ����
-- 5��° Į�� : hiredate
SELECT * FROM emp ORDER BY 5 desc;  -- �Ի����� �ֱ� ��� ����
SELECT * FROM emp ORDER BY 6 desc;  -- �޿�(sal)�� ���� ���� �޴� ��� ����
SELECT * FROM emp ORDER BY 6 asc;  -- �޿�(sal)�� ���� ���� �޴� ��� ����

-- [����1]
-- emp : ������� ���̺�
-- sal : ���޿�
-- comm : �����
-- ����: �޿�, �Ի�����
-- ���: �̸�, ��å, �޿�, �Ի�����
SELECT ename, job, sal, hiredate 
    FROM emp
    ORDER BY sal, hiredate;


-- [����2]
-- ����: �� ���޿�(�޿�, ����), �Ի�����
-- ���: �̸�, ��å, �޿�, ����, �Ի�����
SELECT ename, job, sal, comm, sal + comm "�ѿ��޿�", hiredate 
    FROM emp
    ORDER BY sal + comm, hiredate;

-- Į���� null�̸� ������ ����� null
-- nvl : null ó�� �Լ�
-- Į���� �����Ͱ� null�� �ƴϸ� �� ���� ��ȯ�ϰ� null�̸� ������ ���� ��ȯ
-- nvl(column, value)
SELECT ename, job, sal, comm, sal + nvl(comm, 0) as monsal, hiredate 
    FROM emp
    ORDER BY monsal, hiredate;

-- [����3]
-- sal : ���޿�
-- comm : �����
-- ����� ���� �� �޿�
-- ����� ���� �� �ҵ�
SELECT ename, job, sal, comm, sal + sal + sal + sal + sal + sal + sal + sal + sal + sal + sal + sal as sal2
    FROM emp
    ORDER BY sal2;

SELECT ename, job, sal, comm, sal * 12 as sal2, sal * 12 + nvl(comm, 0) as annual
    FROM emp
    ORDER BY sal2;

-- �� ��� ����
SELECT ename, job, sal, comm, sal * 12 as sal2, sal * 12 + nvl(comm, 0) as annual, (sal * 12 + nvl(comm, 0)) / 12 as annualavg
    FROM emp
    ORDER BY annualavg;

