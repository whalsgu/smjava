-- �׷��Լ�: ������ �Լ�
-- �������� ��
-- sum(column)

-- ��ü ����� �޿� �Ѿ�
SELECT sum(sal) FROM emp;

SELECT sum(sal) FROM emp WHERE deptno = 10;
SELECT sum(sal) FROM emp WHERE deptno = 20;
SELECT sum(sal) FROM emp WHERE deptno = 30;

SELECT '10' as dept, count(sal), sum(sal) FROM emp WHERE deptno = 10
UNION ALL
SELECT '20' as dept, count(sal), sum(sal) FROM emp WHERE deptno = 20
UNION ALL
SELECT '30' as dept, count(sal), sum(sal) FROM emp WHERE deptno = 30;