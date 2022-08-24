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
[����] dept_lists�� ��� �����͸� ��� ����϶�.
--------------------------------------------------------------------------------
*/

DESC DEPT;

SET SERVEROUTPUT ON;

DECLARE
    TYPE DEPTLISTS IS TABLE OF DEPT%ROWTYPE INDEX BY PLS_INTEGER;   -- �μ� ���̺� %ROWTYPE ��� �ִ� �迭
    
    dept_lists DEPTLISTS;

    deptno DEPT.DEPTNO%TYPE;
    
BEGIN
    FOR dept IN (SELECT * FROM dept) LOOP
        dept_lists(dept.deptno).deptno := dept.deptno;
        dept_lists(dept.deptno).dname  := dept.dname;
        dept_lists(dept.deptno).loc    := dept.loc;
        
        DBMS_OUTPUT.PUT_LINE(dept.deptno || ', ' || dept.dname || ', ' || dept.loc);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('* count    : ' || dept_lists.count);
    DBMS_OUTPUT.PUT_LINE('* first    : ' || dept_lists.first);
    DBMS_OUTPUT.PUT_LINE('* last     : ' || dept_lists.last);
    DBMS_OUTPUT.PUT_LINE('* prior(5) : ' || dept_lists.prior(5)); -- �ٷ� ����
    DBMS_OUTPUT.PUT_LINE('* next(5)  : ' || dept_lists.next(5));  -- �ٷ� ����  
    
    -- [����] dept_lists�� ��� �����͸� ��� ����϶�.
    deptno := dept_lists.first;
    
    WHILE deptno IS NOT NULL LOOP
        -- DBMS_OUTPUT.PUT_LINE(deptno);
        DBMS_OUTPUT.PUT_LINE('[' || dept_lists(deptno).deptno || '] ' || 
            dept_lists(deptno).dname || ', ' || 
            dept_lists(deptno).loc);
            
        deptno := dept_lists.next(deptno);
    END LOOP;
END;
/

select * from dept;