-- ����(JOIN)
-- ��������(SELF JOIN)

-- �Ŵ���
CREATE TABLE emp_mgr
    AS SELECT * FROM emp;
    
SELECT empno, ename, mgr FROM emp ORDER BY mgr;    

-- ���, ����� �Ŵ���
-- ������ �ΰ��� ���̺�� �����ؼ� �Ŵ����̸� �˻��ؼ� ����
SELECT e.empno "���" , e.ename "����̸�", e.mgr "�Ŵ����ڵ�", m.empno "�Ŵ����ڵ�", m.ename "�Ŵ����̸�"
    FROM emp e, emp_mgr m
    WHERE e.mgr = m.empno;
    
-- ���, ����� �Ŵ���
-- �ڱ� �ڽ� �˻�: �˻����� ����
-- ������ �ϳ��� ���ڵ� �ȿ��� ��
SELECT e.empno "���" , e.ename "����̸�", e.mgr "�Ŵ����ڵ�", e.empno "�Ŵ����ڵ�", e.ename "�Ŵ����̸�"
    FROM emp3 e
    WHERE e.mgr = e.empno;

-- ��������(SELF JOIN)
SELECT e.empno "���" , e.ename "����̸�", e.mgr "�Ŵ����ڵ�", m.empno "�Ŵ����ڵ�", m.ename "�Ŵ����̸�"
    FROM emp e, emp m
    WHERE e.mgr = m.empno;
    