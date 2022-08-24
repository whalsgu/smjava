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
�÷��� �޼���
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

    DBMS_OUTPUT.PUT_LINE('* count    : ' || dept_lists.count);
    DBMS_OUTPUT.PUT_LINE('* first    : ' || dept_lists.first);
    DBMS_OUTPUT.PUT_LINE('* last     : ' || dept_lists.last);
    DBMS_OUTPUT.PUT_LINE('* prior(5) : ' || dept_lists.prior(5)); -- �ٷ� ����
    DBMS_OUTPUT.PUT_LINE('* next(5)  : ' || dept_lists.next(5));  -- �ٷ� ����  
    
    FOR cnt IN 1..idx LOOP
        DBMS_OUTPUT.PUT_LINE('idx[' || cnt || '] ' || 
            dept_lists(cnt).deptno || ', ' || 
            dept_lists(cnt).dname || ', ' ||
            dept_lists(cnt).loc);
    END LOOP;
    
   

END;
/