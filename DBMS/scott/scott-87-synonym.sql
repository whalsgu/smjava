-- SYNONYM(���Ǿ�)
-- ���� :
-- CREATE SYNONYM ���Ǿ��̸� FOR ��ü�̸�;
--------------------------------------------------------------------------------
-- �뵵: ��Ī���μ� �� �̸��� �ٿ��� �� �� ����

-- ����
CREATE SYNONYM SG FOR SALGRADE;

SELECT * FROM SALGRADE;
SELECT * FROM SG;

DROP SYNONYM SG;