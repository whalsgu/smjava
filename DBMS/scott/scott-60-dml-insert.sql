-- DML(Data Manipulation Language)
-- �Է�(INSERT), ��ȸ(SELECT), ����(UPDATE), ����(DELETE)

-- �Է�(INSERT)
-- ���̺� �����͸� �߰�
-- INSERT INTO ���̺��̸� [ (Į��1, Į��2, ...) ] VALUES (������1, ������2, ...);
-- Į������ ������� ������ ���̺��� ��� Į���� �ش��ϴ� �����͸� VALUES���� ���
-- Į������ ����ϸ� ��õ� Į���� �����ϴ� �ڷ����� �°� VALUES���� ���� ������ŭ ����Ǿ�� �Ѵ�.


-- ���̺� dept�� �����͸� ������ ������ ����
CREATE TABLE deptx AS SELECT * FROM dept WHERE 1 <> 1;
DESC dept;
DESC deptx;
SELECT * FROM deptx;

-- INSERT : Į������ ������� ����
INSERT INTO deptx VALUES (11, '������', '����');

-- INSERT : Į������ ���
INSERT INTO deptx (deptno, dname) VALUES(12, '������');

-- INSERT : ������ �ٲ㵵 �ȴ�(�μ��̸�, �μ��ڵ�)
INSERT INTO deptx (dname, deptno) VALUES('������', 13);

-- ����: Į���� �ش��ϴ� �ڷ����� ��ġ���� ����
-- INSERT INTO deptx (dname, deptno) VALUES(14, '�����'); 

-- INSERT : ��� Į������ ���
INSERT INTO deptx (deptno, dname, loc) VALUES (21, 'ȸ���', '����');

-- INSERT : Į���� ����(NUMBER)�� ���ڿ��� ������?
-- ���ڷ� ��ȯ�� ������ ���ڿ��� ��ȯ���� ���� ����
INSERT INTO deptx (deptno, dname, loc) VALUES ('22', '�ѹ���', '����');

-- ����: ����(NUMBER)���� ���ڷ� ��ȯ�� �Ұ����� ���ڿ��� ������ �� ����.
-- INSERT INTO deptx (deptno, dname, loc) VALUES ('SS', '������', '����');

-- ���ڷ� ��ȯ�� ������ ���ڿ��� ��������� TO_NUMBER �Լ��� ���
-- to_number(���ڿ�, ��������) : ���ڿ��� ���ڷ� ��ȯ
SELECT to_number('31', '99') FROM dual;
INSERT INTO deptx (deptno, dname, loc) VALUES (to_number('31', '99'), '������', '����');

-- ����: ���ڷ� ��ȯ�� �Ұ����� ���ڿ��� ��������� TO_NUMBER �Լ��� ����ص� ����
-- ���ڿ� 'XY'�� ���ڷ� ��ȯ�� �� ����.
-- SELECT to_number('XY', '99') FROM dual;
-- INSERT INTO deptx (deptno, dname, loc) VALUES (to_number('XY', '99'), '���ź�', '����');

-- ��õ� Į���� ������ VALUES���� ����� ������ ��ġ���� ������?
-- Į�� 3��, VALUES 2��
-- ���� : not enough values(���� ���� ������� �ʽ��ϴ�)
-- INSERT INTO deptx (deptno, dname, loc) VALUES (41, '������');
INSERT INTO deptx (deptno, dname) VALUES (41, '������');
INSERT INTO deptx (deptno, dname, loc) VALUES (42, '������2', null);

-- ''�� null�� ó��
-- length(loc) : null, zero(0)�� �ƴ�
INSERT INTO deptx (deptno, dname, loc) VALUES (43, '������3', '');   
SELECT deptno, dname, loc, length(loc) FROM deptx WHERE deptno = 43;

-- dname�� null�� ó��
INSERT INTO deptx (deptno, dname, loc) VALUES (44, null, '�λ�');   

-- ���鹮��(space)�� ������ ������ 1���� ���ڷ� ó��
-- length(loc) : ' ', 1
INSERT INTO deptx (deptno, dname, loc) VALUES (45, '������5', ' ');   
SELECT deptno, dname, loc, length(loc) FROM deptx WHERE deptno = 45;

-- Į���� ������ ũ�⸦ �Ѿ ���
-- TABLE DEPTX (
--      DEPTNO    NUMBER(2)    
--      DNAME     VARCHAR2(14) 
--      LOC       VARCHAR2(13) 
-- )
INSERT INTO deptx (deptno, dname, loc) VALUES (123, '�μ�123', '����123');      -- �μ��ڵ�(deptno)�� ũ�� �߸�(3�ڸ�)
INSERT INTO deptx (deptno, dname, loc) VALUES (51, 'abcdefghijklmnx', 'loc51'); -- �μ���(dname)�� ũ�� �߸�(15�ڸ�)

-- ���� �ѱ��̳� �ٱ����� ��� lengthb(?) ����Ʈ ũ��� Ȯ��
SELECT '��ǰ���ߺ�', length('��ǰ���ߺ�'), lengthb('��ǰ���ߺ�') FROM dual;    -- length(5), UTF-8 -> lengthb(15)
INSERT INTO deptx (deptno, dname, loc) VALUES (52, '��ǰ���ߺ�', 'loc52');     -- �μ���(dname)�� ũ�� �߸�(15�ڸ�)




