-- INSERT
-- ��¥ ������
-- YYYY/MM/DD, YYYY-MM-DD, YY/MM/DD, YY-MM-DD
-- YYYY.MM.DD, YYYY.MM.DD, YY.MM.DD


-- ���̺� EMP�� ���� �� ���̺� EMPX�� ����
CREATE TABLE empx AS SELECT * FROM emp WHERE 1 != 1;    -- ���� �ʴ�, ����: WHERE 1 <> 1

-- ��¥���� : YYYY/MM/DD(����4�ڸ�/��2�ڸ�/��2�ڸ�)
-- ���ڿ�('2021/11/25') -> DATE �������� �ڵ���ȯ �Է�
INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (1234, 'BOSS', 'CEO', null, '2021/11/25', 12345, null, 12);
    
-- ���ڿ�('21/11/25') -> DATE(YY/MM/DD) �������� �ڵ���ȯ �Է�
INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (2468, '������', 'VICE-P', 1234, '21/11/25', 10000, 200, 21);    
    
INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (3030, '�����', 'ACTOR', 3000, '21.11.25', 20000, 300, 30);        
    
-- 1999�� 1�� 10�� : 1999.1.10, 1999.01.10    
INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (5050, '��¡��', '����', 5000, '1999.1.10', 20000, 300, 30);       

INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (5051, '��¡��1', '����', 5000, '1999.01.10', 20000, 300, 30);       

-- MM-DD-YYYY : YY-MM-DD�� �ν��� �õ�
INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (7070, '����', '����', 7000, '07-17-2007', 70000, 777, 70);       

-- 03-07-13 : 2013�� 3�� 7���� �ƴ϶� ����� 2003�� 7�� 13��
INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (7070, '����', '����', 7000, '03-07-13', 70000, 777, 70);       
    
SELECT * FROM empx WHERE empno = 7070;    
SELECT hiredate, to_char(hiredate, 'YYYY-MM-DD') FROM empx WHERE empno = 7070;    
    
-- to_date(���ڿ�, ����)
INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (7077, '���7', '����', 7000, to_date('07-17-2007', 'MM-DD-YYYY'), 70000, 777, 70);           
SELECT hiredate, to_char(hiredate, 'YYYY-MM-DD') FROM empx WHERE empno = 7077;    
    
-- ���� ��¥ : �ڷᰡ ����Ǵ� �������� ��¥�� ����
-- SYSDATE : ������ �ý��� ��¥
INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (8080, '�ȶ���', '�ѷ�', null, sysdate, null, null, null);           
SELECT hiredate, to_char(hiredate, 'YYYY-MM-DD') FROM empx WHERE empno = 8080;    
    
    