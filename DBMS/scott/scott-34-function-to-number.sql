-- ���� �����͸� ���� ������ ��ȯ
-- to_number(���ڿ�, ��������)

SELECT to_number('12345', '999999') FROM dual;

SELECT '12345' + 10 FROM dual;
SELECT '12345' - 10 FROM dual;
SELECT '12345' - '10' FROM dual;

SELECT to_number('12,345', '99,999') + '10' FROM dual;

SELECT to_number('12,345.12', '99,999.99') + '0.23' FROM dual;
