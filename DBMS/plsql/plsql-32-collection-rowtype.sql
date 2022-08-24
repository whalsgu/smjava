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
%ROWTYPE(������ ��) Ȱ���� ���� �迭
--------------------------------------------------------------------------------
*/

SET SERVEROUTPUT ON;

DECLARE
    TYPE DEPTLISTS IS TABLE OF DEPT%ROWTYPE INDEX BY PLS_INTEGER;   -- �μ� ���̺� %ROWTYPE ��� �ִ� �迭
    
    dept_lists DEPTLISTS;
    idx PLS_INTEGER := 0;
BEGIN
    FOR dept IN (SELECT * FROM dept) LOOP
        idx := idx + 1;
        dept_lists(idx).deptno := dept.deptno;
        dept_lists(idx).dname  := dept.dname;
        dept_lists(idx).loc    := dept.loc;
    END LOOP;
    
    FOR cnt IN 1..idx LOOP
        DBMS_OUTPUT.PUT_LINE('idx[' || cnt || '] ' || 
            dept_lists(cnt).deptno || ', ' || 
            dept_lists(cnt).dname || ', ' ||
            dept_lists(cnt).loc);
    END LOOP;

END;
/