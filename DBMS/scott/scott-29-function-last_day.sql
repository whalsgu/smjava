-- ��¥ �Լ�


-- ���� ������ ��¥�� ���ϴ� �Լ�
-- last_day(��¥������)
SELECT sysdate, last_day(sysdate) FROM dual;

-- 2021�� 10���� ������ ��¥?
SELECT last_day('21/10/01') FROM dual;
SELECT last_day('2021/10/01') FROM dual;
