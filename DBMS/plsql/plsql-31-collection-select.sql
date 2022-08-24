/*
�÷���(Collection) : ���� �ڷ���
1. Ư�� �ڷ����� ������ ����
2. ���� ������ �����͸� �ϳ��� ���� ���
--------------------------------------------------------------------------------
�����迭:
TYPE �迭�̸� IS TABLE OF �ڷ��� INDEX BY �ε�����
--------------------------------------------------------------------------------
�ε�����: Ű�� ����� �ε����� �ڷ���
1. BINARY_INTEGER
2. PLS_INTEGER(������)
3. VARCHAR2(������)
--------------------------------------------------------------------------------
���ڵ带 Ȱ���� ���� �迭
--------------------------------------------------------------------------------
*/

SET SERVEROUTPUT ON;

DECLARE
    TYPE REC_DEPT IS RECORD(    -- �μ����� ���ڵ�
        deptno  DEPT.DEPTNO%TYPE,
        dname   DEPT.DNAME%TYPE
    );
    
    TYPE DEPTLISTS IS TABLE OF REC_DEPT INDEX BY PLS_INTEGER;   -- �μ����� ���ڵ���� ��� �ִ� �迭
    
    dept_lists DEPTLISTS;
    idx PLS_INTEGER := 0;
BEGIN
    FOR dept IN (SELECT deptno, dname FROM dept) LOOP
        idx := idx + 1;
        dept_lists(idx).deptno := dept.deptno;
        dept_lists(idx).dname  := dept.dname;
    END LOOP;
    
    FOR cnt IN 1..idx LOOP
        DBMS_OUTPUT.PUT_LINE('idx[' || cnt || '] ' || dept_lists(cnt).deptno || ' : ' || dept_lists(cnt).dname);
    END LOOP;

END;
/