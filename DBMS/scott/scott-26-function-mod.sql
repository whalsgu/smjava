-- ���� ������ : ����
-- round : �ݿø�
-- trunc : ����
-- ceil  : ������ ���ں��� ū ���� �߿��� ���� ���� ������ ��ȯ
-- floor : ������ ���ں��� ���� ���� �߿��� ���� ū ������ ��ȯ
-- mod   : ������ ���� ��ȯ

-- mod(�������� ����, ���� ����)

SELECT mod(10, 3) FROM dual;    -- ������ ��: 1
SELECT mod(10, 2) FROM dual;    -- ������ ��: 0

-- Ȧ�� : 2�� ������ �������� ������ Ȧ��
SELECT mod(7, 2) FROM dual;    -- ������ ���� ������ Ȧ�� : ������ 1


-- ¦�� : 2�� ������ �������� ������ ¦��
SELECT mod(8, 2) FROM dual;    -- ������ ���� ������ ¦�� : ������ 0