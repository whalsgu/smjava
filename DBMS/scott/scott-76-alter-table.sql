-- ���̺� ����: ALTER TABLE
--   1. ���̺��� ���� ����
--   2. ������ �ڷḦ ����
--------------------------------------------------------------------------------
-- ���
--   1. ADD: ���̺��� Į���� �߰�
--      ALTER TABLE ���̺�� ADD Į���� �ڷ���
--   2. RENAME: ���̺��� Į�� �̸��� ����
--      ALTER TABLE ���̺�� RENAME COLUMN ����Į�� TO ���ο�Į��
--   3. MODIFY: ���̺��� Į���� �ڷ����� ����
--      ALTER TABLE ���̺�� MODIFY Į���� �ڷ���   
--   4. DROP: ���Ժ��� Į���� ����
--      ALTER TABLE ���̺�� DROP COLUMN Į����

DESC hellox;
SELECT * FROM HELLOX;

-- Į���߰� : �ּ�
ALTER TABLE hellox ADD addr VARCHAR2(50);

-- Į���̸� ���� : addr -> loc
ALTER TABLE hellox RENAME COLUMN addr TO loc;

-- Į���� �ڷ��� ���� : loc(50) -> loc(100)
ALTER TABLE hellox MODIFY loc VARCHAR2(100);
ALTER TABLE hellox MODIFY loc VARCHAR2(50);     

-- ũ�⸦ ���� �� �����Ͱ� NULL�̰ų�
-- �������� ũ�⺸�ٴ� Ŀ�� �Ѵ�.
INSERT INTO hellox VALUES ( '20000', 1000, 'HELLO', NULL, NULL, NULL); 
ALTER TABLE hellox MODIFY name VARCHAR2(10); 


-- Į�� ���� : loc
ALTER TABLE hellox DROP COLUMN loc;


