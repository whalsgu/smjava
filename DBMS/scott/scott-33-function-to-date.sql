-- ���ڵ����͸� ��¥ �����ͷ� ��ȯ �ϴ� �Լ�
-- to_date(���ڿ�, ��¥����)

SELECT to_date('2021-11-15', 'YYYY-MM-DD') FROM dual;

-- not a valid month
-- SELECT last_day('11-15-2021') FROM dual;

SELECT last_day('2021-11-15') FROM dual;
SELECT last_day(to_date('11-15-2021', 'MM-DD-YYYY')) FROM dual;

SELECT last_day('2021 10/15') FROM dual;
SELECT last_day(to_date('2021.10/15', 'YYYY.MM/DD')) FROM dual;