-- ���ڿ� �Լ� : ���� �����
-- trim  : ���ڿ��� ���ʿ��� ������ ���ڿ��� ����
--       : trim(�ɼ� �����ҹ��ڿ� from �������ڿ�)
--       : �ɼ�
--         -> both : ����
--         -> leading : ����
--         -> trailing : ������
-----------------------------------------------------
-- ltrim : ���ڿ��� ���ʿ��� ������ ���ڿ��� ����
--       : ltrim(�������ڿ�, ������ ���ڿ�)
-- rtrim : ���ڿ��� �����ʿ��� ������ ���ڿ��� ����
--       : rtrim(�������ڿ�, ������ ���ڿ�)

-- ���ڿ��� ���� ������ ����
-- ���� ���ڿ��� �������� ������ ����
SELECT '[' || trim('    ȫ�浿    ') || ']' FROM dual;
-- SELECT '[' || trim('----ȫ�浿----', '-') || ']' FROM dual;

SELECT '[' || trim(both ' ' from '    ȫ�浿    ') || ']' FROM dual;   -- ��������
SELECT '[' || trim(both '-' from '----ȫ�浿----') || ']' FROM dual;   -- ������(-) ����
SELECT '[' || trim(both '.' from '...----ȫ�浿----...') || ']' FROM dual;   -- ��ħǥ(.) ����

-- ���� ���ڿ� ���� ����
SELECT '[' || ltrim('    ȫ�浿    ') || ']' FROM dual;
SELECT '[' || ltrim('    ȫ�浿    ', ' ') || ']' FROM dual;               -- ���� ���ڿ��� ����
SELECT '[' || ltrim('....ȫ�浿....', '.') || ']' FROM dual;               -- ���� ���ڿ��� ����
SELECT '[' || trim(leading from '    ȫ�浿    ') || ']' FROM dual;        -- �������� ������ ����
SELECT '[' || trim(leading ' ' from '    ȫ�浿    ') || ']' FROM dual;    -- ��������
SELECT '[' || trim(leading '-' from '----ȫ�浿----') || ']' FROM dual;    -- ������(-) ����

-- ������ ���ڿ� ���� ����
SELECT '[' || rtrim('    ȫ�浿    ') || ']' FROM dual;
SELECT '[' || rtrim('    ȫ�浿    ', ' ') || ']' FROM dual;               -- ���� ���ڿ��� ����
SELECT '[' || rtrim('....ȫ�浿....', '.') || ']' FROM dual;               -- ���� ���ڿ��� ����
SELECT '[' || trim(trailing from '    ȫ�浿    ') || ']' FROM dual;       -- �������� ������ ����
SELECT '[' || trim(trailing ' ' from '    ȫ�浿    ') || ']' FROM dual;   -- ��������
SELECT '[' || trim(trailing '-' from '----ȫ�浿----') || ']' FROM dual;   -- ������(-) ����

