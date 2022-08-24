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
INSERT INTO deptr VALUES(90, 'APG', 'SEOUL');
INSERT INTO deptr VALUES(99, 'DBA', 'SEONGNAM');

-- 2. �ڷ����
UPDATE deptr SET loc = 'DAEJEON' WHERE deptno = 90;

-- 3. �ڷ����
DELETE FROM deptr WHERE deptno = 99;

-- 4. �۾����
-- 1�� �۾� ���� ���·� ���ư�
ROLLBACK;

-- 5. �۾��Ϸ�
-- �ٽ� 1������ 3������ ó���ϰ�
-- 4�� �۾��� �ǳʶٰ�
-- 5�� �۾����� �̵�
-- 1������ 3���۾��� ������ �ݿ�
COMMIT; -- Ʈ������� �Ϸ�
SELECT * FROM deptr;
-- deptno(90)�� ���� �ִ�.
-- Ŀ���� �� �Ŀ��� �ѹ��� �ص� �۾����� ���·� ���ư��� ����
ROLLBACK;   
SELECT * FROM deptr;
