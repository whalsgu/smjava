-- ���ڿ� �Լ� : �����͸� ����(����) �Լ�
-- ���ڿ� ���� : ���ڿ� || ���ڿ� || ...

-- ���ڿ� ���� : ���ڿ� || ���ڿ�
SELECT empno, ename, empno || ename FROM emp; -- ����� �̸� ����
SELECT empno, ename, ename || empno FROM emp; -- �̸��� ����� ����

--��� || '-' || �̸�
SELECT empno, ename, empno || '-' || ename FROM emp;

-- �̸� || '(' || ��� || ')'
SELECT empno, ename, ename || '(' || empno || ')' as enameno FROM emp;






