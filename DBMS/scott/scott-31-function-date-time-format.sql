-- �ڷ��� ��ȯ : ��¥�� ���ڸ� ���ڷ� ��ȯ
-- to_char(������, ����)

-- ��¥�� ��Ʈ�� ����(�����)
SELECT to_char(sysdate, 'YYYYMMDD') FROM dual;
SELECT to_char(sysdate, 'YYYY.MM.DD') FROM dual;
SELECT to_char(sysdate, 'YYYY-MM-DD') FROM dual;
SELECT to_char(sysdate, 'YYYY/MM/DD') FROM dual;
SELECT to_char(sysdate, 'YY/MM/DD') FROM dual;

-- ����(CC) : 21����
SELECT to_char(sysdate, 'CC') FROM dual;

-- ����
SELECT to_char(sysdate, 'YY') FROM dual;    -- 2�ڸ�
SELECT to_char(sysdate, 'YYYY') FROM dual;  -- 4�ڸ�

-- ��
SELECT to_char(sysdate, 'MM') FROM dual;    -- 2�ڸ�
SELECT to_char(sysdate, 'MON') FROM dual;   -- 2�ڸ� + ��(�� �� �̸� ����)
SELECT to_char(sysdate, 'MONTH') FROM dual; -- 2�ڸ� + ��(�� �� �̸� ��ü)

-- ��
SELECT to_char(sysdate, 'DD') FROM dual;    -- 2�ڸ�(2�ڸ� ����)
SELECT to_char(sysdate, 'DDD') FROM dual;   -- 3�ڸ�(1�⿡ ����, 1~366)

-- ����
SELECT to_char(sysdate, 'DY') FROM dual;    -- �� ���� ����
SELECT to_char(sysdate, 'DAY') FROM dual;   -- �� ���� ��ü
SELECT to_char(sysdate, 'W') FROM dual;     -- ���� �� ��° ��, 1~5
SELECT to_char(sysdate, 'WW') FROM dual;    -- 1�� �� �� ��° ��, 1~53

-- �ð� ����
-- �ð�: HH, HH12, HH24
-- ��: MI
-- ��: SS
SELECT to_char(sysdate, 'HH24:MI:SS') FROM dual;        -- 24�ð� ����, ��:��:��
SELECT to_char(sysdate, 'HH12:MI:SS') FROM dual;        -- 12�ð� ����, ��:��:��
SELECT to_char(sysdate, 'AM HH12:MI:SS') FROM dual;     -- ����/����
SELECT to_char(sysdate, 'PM HH12:MI:SS') FROM dual;     -- ����/����
SELECT to_char(sysdate, 'A.M. HH12:MI:SS') FROM dual;   -- ����/����
SELECT to_char(sysdate, 'P.M. HH12:MI:SS') FROM dual;   -- ����/����
SELECT to_char(sysdate, 'HH12:MI:SS AM') FROM dual;     -- 12�ð� ����, ��:��:��
SELECT to_char(sysdate, 'HH:MI:SS') FROM dual;          -- 12�ð� ����, ��:��:��


