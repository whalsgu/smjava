-- ���ڿ� �Լ� : �����͸� ����(����) �Լ�
-- concat(���ڿ�1, ���ڿ�2) : ���ڿ�1 + ���ڿ�2, �� ���� ���ڿ��� �ϳ��� ����

SELECT empno, ename, concat(empno, ename) FROM emp; -- ����� �̸� ����
SELECT empno, ename, concat(ename, empno) FROM emp; -- �̸��� ����� ����

--��� + '-' + �̸�
SELECT empno, ename, concat(empno, concat('-', ename)) FROM emp;

-- �̸� + '(' + ��� + ')'
SELECT empno, ename, concat(concat(ename, concat('(', empno)), ')') FROM emp;

-- �� �ܰ躰 concat
SELECT concat('[', empno) FROM emp;
SELECT concat(ename, concat('[', empno)) FROM emp;
SELECT concat(concat(ename, concat('[', empno)), ']') FROM emp;





