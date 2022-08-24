-- ��������
-- ��Į�� ��������(scalar sub-query) : SELECT���� SELECT�� ���
-- SELECT���� �ϳ��� �� ������ ����� ���
-- ����: 
--   -> SELECT�� ����ϴ� Ŀ�������� ����� �ϳ��� ���� �ش��ϴ� ���� ���;� �Ѵ�.
--   -> ������ ����� ������ �ȵȴ�.

-- �޿����
SELECT * FROM salgrade;
SELECT grade FROM salgrade;

-- ����� �޿� ���
SELECT e.empno, e.ename, e.sal, s.grade
    FROM emp e, salgrade s
    WHERE e.sal BETWEEN s.losal AND s.hisal
    ORDER BY 1;
    
-- ��Į�� ��������(scalar sub-query) : SELECT���� SELECT�� ���    
SELECT e.empno, e.ename, e.sal, (SELECT grade FROM salgrade WHERE e.sal BETWEEN losal AND hisal) AS salgrade
    FROM emp e
    ORDER BY 1;

-- ����: ������ ����� ������ �ȵȴ�.
-- 01427. 00000 -  "single-row subquery returns more than one row"
-- SELECT e.empno, e.ename, e.sal, (SELECT grade FROM salgrade) AS salgrade FROM emp e ORDER BY 1;

-- ����: ���� Į���� ������ �ȵȴ�.
-- SELECT e.empno, e.ename, e.sal, (SELECT grade, losal, hisal FROM salgrade WHERE e.sal BETWEEN losal AND hisal) AS salgrade FROM emp e ORDER BY 1;

-- �μ��ڵ�, �μ��̸�
SELECT e.empno, e.ename, e.sal, e.deptno,
    (SELECT grade FROM salgrade WHERE e.sal BETWEEN losal AND hisal) AS salgrade,
    (SELECT dname FROM dept WHERE e.deptno = dept.deptno) AS dname
    FROM emp e
    ORDER BY 1;
