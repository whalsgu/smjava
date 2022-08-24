-- ������(Sequence)
-- ���� : ���������� ����Ǵ� �Ϸù�ȣ
/*
CREATE SEQUENCE �������̸�
    INCREMENT BY n      -- ������(�⺻�� 1)
    START WITH n        -- ���۰�(�⺻�� 1)
    MAXVALUE n          -- �ִ밪
    MINVALUE n          -- �ּҰ�(CYCLE�� ��� MAXVALUE�� ���� �� ���۰�)
    CYCLE | NOCYCLE     -- �ִ밪�� �������� �� ���۰����� �ٽ� ������ ������ ����
    CACHE n | NOCACHE   -- ������ ��ȣ�� �޸𸮿� �̸� �Ҵ��� ���� ���� �������� ����(�⺻���� 20)
*/

CREATE SEQUENCE hello_seq
    INCREMENT BY 10
    START WITH 10
    MAXVALUE 99
    MINVALUE 1
    -- NOCYCLE
    CYCLE
    NOCACHE;
    
DROP SEQUENCE hello_seq;    

SELECT * FROM user_sequences;

-- ���� ��ȣ ���� : ���ʿ� �� ���� ������ �ؾ� �Ѵ�.
-- ��ȣ�� ����Ǹ鼭 ����
-- MAXVALUE�� ������ �Ŀ� �ٽ� �����ϸ� ����(NOCYCLE)
-- ORA-08004: ������ HELLO_SEQ.NEXTVAL exceeds MAXVALUE�� ��ʷ� �� �� �����ϴ�
SELECT hello_seq.nextval FROM dual;

-- ���� ��ȣ ��ȸ
SELECT hello_seq.currval FROM dual;

CREATE TABLE deptseq AS SELECT * FROM dept WHERE 1 <> 1;
SELECT * FROM deptseq;

INSERT INTO deptseq VALUES (hello_seq.nextval, 'EZ' || hello_seq.currval, 'SEONGNAM');
COMMIT;