-- �ƿ�������(outer join)
-- left outer join : ���� �ܺ� ����
-- right outer join : ������ �ܺ� ����
-- full outer join : ��ü �ܺ� ����


-- ��������(SELF JOIN)
-- emp.mgr�� null�̰ų� �ش��ϴ� ���� �Ŵ����� ���� ���� �˻� ����
-- 7839(KING)
SELECT e.empno "���" , e.ename "����̸�", e.job, e.mgr "�Ŵ����ڵ�", m.empno "�Ŵ����ڵ�", m.ename "�Ŵ����̸�"
    FROM emp e, emp m
    WHERE e.mgr = m.empno;

-- LEFT OUTER JOIN : emp, emp
SELECT e.empno "���" , e.ename "����̸�", e.job, e.mgr "�Ŵ����ڵ�", m.empno "�Ŵ����ڵ�", m.ename "�Ŵ����̸�"
    FROM emp e LEFT OUTER JOIN emp m ON(e.mgr = m.empno)
    ORDER BY e.empno;

-- LEFT OUTER JOIN : emp, emp_mgr
SELECT e.empno "���" , e.ename "����̸�", e.job, e.mgr "�Ŵ����ڵ�", m.empno "�Ŵ����ڵ�", m.ename "�Ŵ����̸�"
    FROM emp e LEFT OUTER JOIN emp_mgr m ON(e.mgr = m.empno)
    ORDER BY e.empno;

-- ǥ��(SQL-99) ���
-- LEFT OUTER JOIN : emp3, emp3
-- �ڽ��� ����� �����ΰ�?
SELECT e.empno "���" , e.ename "����̸�", e.job, e.mgr "�Ŵ����ڵ�", m.empno "�Ŵ����ڵ�", m.ename "�Ŵ����̸�"
    FROM emp3 e LEFT OUTER JOIN emp3 m ON(e.mgr = m.empno)
    ORDER BY e.empno;

-- ������ ����Ŭ ���
-- LEFT OUTER JOIN : emp3, emp3
-- �������� : WHERE e.mgr = m.empno 
SELECT e.empno "���" , e.ename "����̸�", e.job, e.mgr "�Ŵ����ڵ�", m.empno "�Ŵ����ڵ�", m.ename "�Ŵ����̸�"
    FROM emp e, emp m
    -- FROM emp3 e, emp3 m
    WHERE e.mgr = m.empno(+)
    ORDER BY e.empno;


-- RIGHT OUTER JOIN : emp3, emp3
-- ���� ������ ����ΰ�?
-- ��� �ʵ尡 NULL�̸� ���� ������ ����� �ƴϴ�.
SELECT e.empno "���" , e.ename "����̸�", e.job, e.mgr "�Ŵ����ڵ�", m.empno "�Ŵ����ڵ�", m.ename "�Ŵ����̸�"
    FROM emp e RIGHT OUTER JOIN emp m ON(e.mgr = m.empno)
    ORDER BY e.empno;
    
SELECT e.empno "���" , e.ename "����̸�", e.job, e.mgr "�Ŵ����ڵ�", m.empno "�Ŵ����ڵ�", m.ename "�Ŵ����̸�"
    FROM emp e RIGHT OUTER JOIN emp m ON(m.empno = e.mgr)
    ORDER BY e.empno;

-- ������ ����Ŭ ���
-- RIGHT OUTER JOIN : emp3, emp3
SELECT e.empno "���" , e.ename "����̸�", e.job, e.mgr "�Ŵ����ڵ�", m.empno "�Ŵ����ڵ�", m.ename "�Ŵ����̸�"
    FROM emp e, emp m
    WHERE e.mgr(+) = m.empno
    ORDER BY e.empno;

SELECT e.empno "���" , e.ename "����̸�", e.job, e.mgr "�Ŵ����ڵ�", m.empno "�Ŵ����ڵ�", m.ename "�Ŵ����̸�"
    FROM emp e, emp m
    WHERE m.empno = e.mgr(+)
    ORDER BY e.empno;


-- FULL OUTER JOIN(��ü �ܺ� ����)
-- ���� ���ӻ��(�ų���)
-- ���ӻ���� ������ ���� ���� ���
SELECT e.empno "���" , e.ename "����̸�", e.job, e.mgr "�Ŵ����ڵ�", m.empno "�Ŵ����ڵ�", m.ename "�Ŵ����̸�"
    FROM emp e FULL OUTER JOIN emp m ON(e.mgr = m.empno)
    ORDER BY e.empno;

/*
-- [����] ORA-01468: outer-join�� ���̺��� 1���� ������ �� �ֽ��ϴ�
-- LEFT, RIGHT ���ʿ� (+)�� ������ �� ����.
SELECT e.empno "���" , e.ename "����̸�", e.job, e.mgr "�Ŵ����ڵ�", m.empno "�Ŵ����ڵ�", m.ename "�Ŵ����̸�"
    FROM emp e, emp m
    WHERE e.mgr(+) = m.empno(+)
    ORDER BY e.empno;
*/

-- [����]
-- FULL OUTER JOIN(��ü �ܺ� ����)
-- UNION���� ���� ����

-- LEFT OUTER JOIN : emp, emp
SELECT e.empno empno, e.ename, e.job, e.mgr, m.empno, m.ename
    FROM emp e LEFT OUTER JOIN emp m ON(e.mgr = m.empno)
UNION
-- RIGHT OUTER JOIN : emp, emp
SELECT e.empno empno, e.ename, e.job, e.mgr, m.empno, m.ename
    FROM emp e RIGHT OUTER JOIN emp m ON(e.mgr = m.empno)
ORDER BY 1;    

    
    
    