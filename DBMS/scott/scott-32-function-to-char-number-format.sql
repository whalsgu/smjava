-- �ڷ��� ��ȯ : ��¥�� ���ڸ� ���ڷ� ��ȯ
-- to_char(������, ����)

-- õ ������ ���� ��ȣ ǥ��(,)
SELECT sal, to_char(sal, '999,999') FROM emp;

SELECT to_char(1234567890, '999,999,999,999') as num FROM emp;  -- ���ڸ��� ä���� ����
SELECT to_char(1234567890, '000,999,999,999') FROM emp;         -- ���ڸ��� 0���� ä��

-- �Ҽ���
SELECT to_char(1234.56, '999,999.99') FROM emp;
SELECT to_char(1234.56, '999,999.00') FROM emp;

SELECT to_char(1234, '999,999.99') FROM emp;
SELECT to_char(1234, '999,999.00') FROM emp;

-- ȭ�����
-- L: Locale, ����ȭ�� ���� ��ȣ 
SELECT to_char(10000, 'L999,999') FROM emp;

-- $: �޷�
SELECT to_char(10000, '$999,999') FROM emp;
