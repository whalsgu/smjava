-- �� ��¥ ������ ���� ���� ���ϴ� �Լ�
-- months_between(��¥������1, ��¥������2) : ����� ���� ��

-- �Ի�� - ����� -> ���̳ʽ�
SELECT ename, hiredate, months_between(hiredate, sysdate) FROM emp;

-- ����� - �Ի�� -> �÷���
SELECT ename, hiredate, months_between(sysdate, hiredate) FROM emp;

-- ����� - �Ի�� -> �÷���
SELECT ename, hiredate, trunc(months_between(sysdate, hiredate)) || '����' FROM emp;

-- �ٹ��� ������, ���
SELECT ename, hiredate, 
    trunc(months_between(sysdate, hiredate)) || '����', 
    round(trunc(months_between(sysdate, hiredate)) / 12, 2) || '��' FROM emp;