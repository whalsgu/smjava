-- ���տ�����
-- UNION ALL
-- ����: UNION�� ����
-- ����: UNION�� ���̴� �ߺ��Ǵ� �����͵� ��� ���õ�

-- UNION ALL : �ߺ��� ������ ��� ���ڵ� ����
SELECT * FROM emp   -- 12 ���ڵ�
UNION ALL
SELECT * FROM emp3; -- 12 ���ڵ�

SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN (10,20); -- 6���� ��
SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN (20); -- 3���� ��

-- UNION ALL
SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN (10,20) -- 6���� ��
-- UNION -- �� 6��
UNION ALL --  �� 9��
SELECT empno, ename, sal, deptno FROM emp3 WHERE deptno IN (20); -- 3���� ��

-- A UNION ALL B UNION C
-- 12���� ��
SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN (10) -- 3���� ��
UNION ALL
SELECT empno, ename, sal, deptno FROM emp WHERE deptno IN (20) -- 3���� ��
UNION
SELECT empno, ename, sal, deptno FROM emp3; -- 12���� ��

