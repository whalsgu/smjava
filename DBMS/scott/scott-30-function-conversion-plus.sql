-- �ڷ��� ��ȯ
-- to_char : ����, ��¥�����͸� ���ڷ� ��ȯ
-- to_number : ���� �����͸� ���� �����ͷ� ��ȯ
-- to_date : ���� �����͸� ��¥ �����ͷ� ��ȯ

-- NUMBER + ���ڿ�(����) : �ڵ�����ȯ, ���ڷ� ��ȯ
-- �Ͻ��� �� ��ȯ(IMPLICIT TYPE CONVERSION)
SELECT ename, empno, empno + '11' FROM emp;
SELECT ename, empno, empno + '11', empno + 11 FROM emp;


-- NUMBER + ���ڿ�(����) : INVALID NUMBER ����
SELECT ename, empno, empno + 'JX' FROM emp;

-- ���ڿ� + ���ڿ� : INVALID NUMBER ����
SELECT ename, empno, ename + 'JX' FROM emp;

-- ���ڿ� || ���ڿ� : ���ڿ� ����
SELECT ename, empno, ename || '-JX' FROM emp;

