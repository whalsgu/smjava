-- ����(JOIN)

SELECT * FROM emp;  -- 12�� ��
SELECT * FROM dept; -- 4�� ��

-- īƼ�þ� ���δ���, ũ�ν� ����, ���� ����
SELECT * FROM emp, dept; -- 48�� �� : 12 * 4 = 48
SELECT * FROM emp e, dept d ORDER BY e.empno, e.deptno, d.deptno;

-- �����(equal join), ��������, ��������, �ܼ�����
SELECT * FROM emp e, dept d WHERE e.deptno = d.deptno ORDER BY e.empno;

SELECT emp.empno, emp.ename, emp.deptno, dept.dname, dept.loc
    FROM emp, dept 
    WHERE emp.deptno = dept.deptno ORDER BY emp.empno;
    
SELECT e.empno, e.ename, e.deptno, d.dname, d.loc
    FROM emp e, dept d 
    WHERE e.deptno = d.deptno ORDER BY e.empno;    

    
-- [����]
-- �޿��� 3000�̸��̸鼭 ������ ���� ���
-- �������, �μ�����(�μ��ڵ�, �μ��̸�, �μ���ġ)
-- �������(emp), �μ�����(dept)
-- �޿�(sal), ����(comm)
SELECT e.empno "���", e.ename "�̸�", e.sal, e.comm, e.deptno, d.dname, d.loc
    FROM emp e, dept d
    WHERE e.sal < 3000  -- �޿��� 3000�̸�
    AND (e.comm is null OR e.comm = 0)  -- �������
    AND e.deptno = d.deptno -- �μ�����
    ORDER BY 1;  -- ����(���)


