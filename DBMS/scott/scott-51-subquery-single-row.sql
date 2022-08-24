-- ��������(Sub-Query)
-- SELECT�� �ȿ� SELECT�� �ִ� ���
-- ��������: ���������� ����� ������ ����
-- ��������: 
--   1. ���������� ���
--   2. ���������� ���������� �ڷ����� Į���� ������ ���ƾ� �Ѵ�.
--   3. ����� �� ���� ���������� ������ ������ ȣȯ �����ؾ� �Ѵ�.
--      (����� ������, ������)


SELECT * FROM emp;

-- CLARK�� �޿�
SELECT empno, ename, sal as "�޿�" FROM emp WHERE empno = 7782; -- �޿�: 2450

-- CLARK�� �޿�(2450)���� �� ���� �޿��� �޴� ���
SELECT * FROM emp WHERE sal > 2450;

SELECT sal FROM emp WHERE empno > 7782;

-- ����: �������� ����
-- SELECT * FROM emp WHERE sal > (SELECT sal FROM emp WHERE empno > 7782);

-- ���������� ���: ������� ���� Į��
SELECT * FROM emp WHERE sal > (SELECT sal FROM emp WHERE empno = 7782);

-- �Ի����� ������ ����
SELECT * FROM emp ORDER BY hiredate;

-- [����1]
-- TURNER�� �Ի�����: 81/09/08
-- TURNER ���� ���� �Ի��� ���
SELECT * FROM emp WHERE hiredate < '81/09/08'; -- 6��
SELECT * FROM emp WHERE to_date(hiredate, 'YY/MM/DD') < to_date('81/09/08', 'YY/MM/DD'); -- 6��
SELECT empno, hiredate FROM emp WHERE ename = 'TURNER';
SELECT * FROM emp WHERE hiredate < (SELECT hiredate FROM emp WHERE ename = 'TURNER');
SELECT * FROM emp WHERE hiredate < (SELECT hiredate FROM emp WHERE empno = 7844);

-- [����2]
-- TURNER ���� �ʰ� �Ի��� ���(TURNER�� ����)
SELECT * FROM emp 
    WHERE hiredate >= (SELECT hiredate FROM emp WHERE empno = 7844)
    ORDER BY hiredate;

-- [����3] 
-- �μ��ڵ尡 20�� ���� ����߿���
-- TURNER ���� ���� �޿��� �޴�
-- ��� ������ �Ҽ� �μ� ������ ���
SELECT * FROM emp ORDER BY deptno, sal;

SELECT * FROM emp e, dept d
    WHERE e.deptno = 20
    AND e.deptno = d.deptno
    AND e.sal > (SELECT sal FROM emp WHERE empno = 7844)
    ORDER BY e.sal;

-- [����4] 
-- �μ��ڵ尡 10, 20�� ���� ����߿���
-- ��ü ����� ��� �޿����� ���� �޿��� �޴�
-- ��� ������ �Ҽ� �μ� ������ ���
-- ��ձ޿�
SELECT avg(sal) FROM emp; -- ��ձ޿�: 2077

SELECT * FROM emp e, dept d
    WHERE e.deptno IN(10, 20)
    AND e.deptno = d.deptno
    AND e.sal > (SELECT avg(sal) FROM emp)
    ORDER BY e.sal;

