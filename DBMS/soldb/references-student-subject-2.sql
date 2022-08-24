-- �л�(STUDENT) ���̺��� �а�(SUBJECT) ���̺��� �ܺ�Ű�� ����
-- 1. ���̺� ���� ���� : SUBJECT -> STUDENT 
-- 2. �ԷµǴ� ����    : SUBJECT -> STUDENT
-- 3. �����Ǵ� ����    : STUDENT -> SUBJECT
--------------------------------------------------------------------------------
-- �����Ǵ� ���̺��� �����͸� ������ �� �����ϰ� �ִ� �����͵� �Բ� ����
-- CONSTRANT ���������̸� REFERENCES �������̺�(Į��) ON DELETE CASCADE
--------------------------------------------------------------------------------

-- �а� ���̺�
CREATE TABLE SUBJECT (
    SUBNO VARCHAR2(10) CONSTRAINT PK_SUBJECT_SUBNO PRIMARY KEY,         -- �а���ȣ
    SUBNAME VARCHAR2(20)                                                -- �а���
);

-- �л� ���̺�
-- ON DELETE CASCASE
CREATE TABLE STUDENT (
    SNO NUMBER(5) CONSTRAINT PK_STUDENT_SNO PRIMARY KEY,                -- �й�
    SNAME VARCHAR2(20),                                                 -- �̸�
    SUBNO VARCHAR2(10) CONSTRAINT FK_SUBJECT_SUBNO REFERENCES SUBJECT(SUBNO) ON DELETE CASCADE  -- �а�
);

DROP TABLE STUDENT;
DROP TABLE SUBJECT;

--------------------------------------------------------------------------------
-- [�ԷµǴ� ����]
--------------------------------------------------------------------------------
-- 1. �а� ���̺�
INSERT INTO SUBJECT VALUES( '2021-0001', '���а�');
INSERT INTO SUBJECT VALUES( '2021-0002', '������');
INSERT INTO SUBJECT VALUES( '2021-0003', '������');
INSERT INTO SUBJECT VALUES( '2021-0004', '�����а�');
INSERT INTO SUBJECT VALUES( '2021-0005', '��ǻ���а�');

SELECT * FROM SUBJECT;

-- 2. �л� ���̺�
-- SUBJECT.SUBNO�� �Է��ϴ� �����Ͱ� �����ؾ� �Ѵ�.
INSERT INTO STUDENT VALUES ( 10000, 'ȫ�浿', '2021-0001');
INSERT INTO STUDENT VALUES ( 20000, '���мҳ�', '2021-0002');
INSERT INTO STUDENT VALUES ( 30000, '�ܹ���', '2021-0003');
INSERT INTO STUDENT VALUES ( 40000, '��Ƽ��', '2021-0004');
INSERT INTO STUDENT VALUES ( 50000, '��������', '2021-0004');
INSERT INTO STUDENT VALUES ( 60000, '�輺��', '2021-0005');

-- ����
SELECT s.sno, s.sname, s.subno, j.subno, j.subname
    FROM student s, subject j
    WHERE s.subno = j.subno;
    
--------------------------------------------------------------------------------
-- [����]
--------------------------------------------------------------------------------
-- 2. �а� ���̺�
-- '�����а�' �л����� �����Ͱ� �ڵ����� ���� ��
DELETE FROM SUBJECT WHERE SUBNO = '2021-0004'; -- �����а�
SELECT * FROM STUDENT;





