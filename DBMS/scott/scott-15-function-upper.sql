-- �����Լ�(Built-in Function)
-- 1. ������ �Լ�(Single-Row Function)
--    -> �����Ͱ� �� �྿ �Էµǰ� �Էµ� �� ��� ����� �ϳ��� ������ �Լ� 
-- 2. ������ �Լ�(Multiple-Row Function)
--    -> �����Ͱ� ���� �࿡ �Էµǰ� �ϳ��� ������ ����� ��ȯ�Ǵ� �Լ�

-- ������ �Լ�
-- �����Լ�(String)
-- 1. upper : �����͸� �빮�ڷ� ��ȯ
-- 2. lower : �����͸� �ҹ��ڷ� ��ȯ
-- 3. intcap : ù ���ڴ� �빮��, �������� �ҹ��ڷ� ��ȯ

SELECT ename, upper(ename), lower(ename), initcap(ename) FROM emp;

SELECT ename, upper(ename) as ename2, lower(ename) as ename3, initcap(ename) as ename4 FROM emp;

-- ��ü �̸����� �˻�
SELECT empno, ename FROM emp WHERE ename = 'KING';
SELECT empno, ename FROM emp WHERE ename = 'king';          -- �ҹ��ڷ� �����ϴ� �̸��� ���� ����� ����
SELECT empno, ename FROM emp WHERE ename = upper('king');

-- �̸��� �Ϻ� ���ڷ� �˻�
SELECT empno, ename FROM emp WHERE ename LIKE 'J%';
SELECT empno, ename FROM emp WHERE ename LIKE 'j%';         -- �ҹ��ڷ� �����ϴ� �̸��� ���� ����� ����
SELECT empno, ename FROM emp WHERE ename LIKE upper('j%');  -- �ҹ��ڸ� �빮�ڷ� ��ȯ�� �Ŀ� �˻�

-- ��ҹ���(a, A)�� �����ϴ� �̸��� ���� ��� ���
SELECT empno, ename FROM emp WHERE ename LIKE upper('%a%');  

-- ����̸��� �빮�ڷ� ����Ǿ� �ֱ� ������ �ҹ��ڷ� �˻��� �ϸ� �� ã��
SELECT empno, ename FROM emp WHERE ename = lower('CLARK');         

-- ���̺� �����Ϳ� �˻��ϰ��� �ϴ� ������ ������ ��� �ҹ��ڷ� ��ȯ�ؼ� �˻�(����)
-- ���࿡ ename�� �ε����� �ɷ� �ִٸ� �Լ��� �����ϸ� �ε����� ������ ����(�ӵ��� ������)
SELECT empno, ename FROM emp WHERE lower(ename) = lower('CLARK');   

SELECT empno, ename FROM emp WHERE ename = initcap('cLARK');    -- 'Clark'�� ����
SELECT empno, ename FROM emp WHERE initcap(ename) = initcap('cLARK');   


