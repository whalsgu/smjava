-- Ʈ�����(Transaction)
-- �ϳ��� ������ �۾��� ó���ϱ� ���� ���� �����ǰ� ���ӵ� �����ͺ��̽� ��ɾ�(DML)�� ����.
-- TCL(Transaction Control Language)
-- 1. �ϳ��� ������ �۾� ����
-- 2. �ϳ��� �۾� �Ǵ� �����ϰ� �����Ǿ� �ִ� �۾� ������ ���� ���� �� ���� �ּ� ���� ����
-- 3. �ϳ��� Ʈ������� ���� DML ������� �̷�� ����.
-- 4. Ŀ��(COMMIT)�� ���ؼ� Ʈ������� �Ϸ�ȴ�.
-- 5. ���(ROLLBACK)�� ���ؼ� ����� SQL(DML)���� ��� ó���ȴ�.

CREATE TABLE deptr AS SELECT * FROM dept;
SELECT * FROM deptr;

-- [Ʈ����� 1]
-- 1. �ű��߰�
INSERT INTO deptr VALUES(80, 'APG', 'SEOUL');
INSERT INTO deptr VALUES(89, 'DBA', 'SEONGNAM');

-- 2. �ڷ����
UPDATE deptr SET loc = 'DAEJEON' WHERE deptno = 80;

-- 3. ���̺�����Ʈ
SAVEPOINT tr1;

-- 4. �ڷ����
DELETE FROM deptr WHERE deptno = 89;

-- 5. �۾����
ROLLBACK; -- ��ü�۾� ���
ROLLBACK TO tr1; -- ������ ���̺� ����Ʈ�� tr1���� �۾��� ���
COMMIT;

