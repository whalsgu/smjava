-- ���տ�����
-- UNION(������)
-- �÷��� ������ �ڷ��� ��ġ
-- �ߺ��Ǵ� �����ʹ� �ϳ��� ���õ�

SELECT * FROM emp WHERE deptno = 10;
SELECT * FROM emp WHERE deptno = 20;

SELECT * FROM emp WHERE deptno IN (10, 20);

-- UNION
SELECT * FROM emp WHERE deptno = 10 
UNION 
SELECT * FROM emp WHERE deptno = 20;

-- Į���� ������ ��ġ�ؾ� �Ѵ�.
-- ���̺� �̸��̳� ������ �������.
SELECT empno, ename, sal, deptno FROM emp WHERE deptno = 10 
UNION 
SELECT empno, ename, sal, deptno FROM emp WHERE deptno = 20;

-- �ߺ��Ǵ� �μ�(20)�� �ϳ��� ���ڵ�(��)�� ����
SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN(10,20)
UNION 
SELECT empno, ename, sal, deptno FROM emp WHERE deptno = 20;

-- Į���� �̸��� ��ġ�� �ʿ�� ����.
-- �ڷ����� ��ġ�ϸ� �ȴ�.
SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN(10,20) -- 6���� ��
UNION
SELECT empno, ename, sal, comm FROM emp WHERE deptno = 30; -- 6���� ��

-- ���ο� ���̺� ���� : ������ ���̺��� �̿��ؼ�
SELECT empno, ename, sal, sal * 12 as annual FROM emp;

-- ���̺� emp2 ����
CREATE TABLE emp2
    AS SELECT empno, ename, sal, sal * 12 as annual FROM emp;
    
-- ���̺� ���� Ȯ��    
DESC emp2; 
SELECT * FROM emp2;


SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN(10,20) -- 6���� ��
UNION
SELECT * FROM emp2
ORDER BY empno, ename;

-- ���̺� ���� EMP -> EMP3
CREATE TABLE emp3 AS SELECT * FROM emp;
DESC emp3;
SELECT * FROM emp3;

-- UNION : �ߺ� ���ڵ�� �ϳ��� ����
SELECT * FROM emp UNION SELECT * FROM emp3;

-- UNION ALL : �ߺ��� ������ ��� ���ڵ� ����
SELECT * FROM emp   -- 12 ���ڵ�
UNION ALL
SELECT * FROM emp3; -- 12 ���ڵ�



