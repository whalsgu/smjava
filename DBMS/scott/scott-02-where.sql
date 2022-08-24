-- ��ȸ : WHRE

-- ��ȸ ���ǽľ��� ��� ���̺��� ������ �˻�
SELECT * FROM emp;

-- ���ǰ˻�: �μ��ڵ尡 30�� �������
SELECT * FROM emp WHERE deptno = 30;

-- �μ��ڵ�(30)�̰� ��å(SALEMAN)�� ���? : AND
SELECT * FROM emp WHERE deptno = 30 AND job = 'SALESMAN';

-- �μ��ڵ�(30)�̰ų� ��å(SALEMAN)�� ���? : OR
SELECT * FROM emp WHERE deptno = 30 OR job = 'SALESMAN';

-- ��������ڸ� �˻� ���ǿ� �ֱ�
-- ���ҵ� SAL * 12 = 36000
-- ����(=), ũ��(>), ũ�ų� ����(>=), �۴�(<), �۰ų� ����(<=)
SELECT * FROM emp WHERE (sal * 12) = 36000;     -- ����(=)
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) > 36000;
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) >= 36000;
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) < 36000;
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) <= 36000;

-- ���� �ʴ� : !=, <>, ^=
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) != 36000;
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) <> 36000;
SELECT ename, sal, sal * 12 FROM emp WHERE (sal * 12) ^= 36000;

-- sal�� 3000�� ������
SELECT * FROM emp WHERE sal = 3000;

-- �� ���� : NOT
-- sal = 3000�� ���� ����
-- sal�� 3000�� �ƴ� ��� ������
SELECT * FROM emp WHERE sal != 3000;
SELECT * FROM emp WHERE NOT sal = 3000;

-- OR
SELECT * FROM emp
    WHERE job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK';
    
-- NOT OR : �ٷ� �ھ� ���� ������ NOT
-- ��å�� MANAGER�� �ƴϰ�
-- ��å�� SALESMAN�̰ų� CLERK�� ���
SELECT * FROM emp
    WHERE NOT job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK';

-- NOT OR : �׷����� ��� ��ü�� NOT
-- ��å�� MANAGER�� �ƴϰ� SALESMAN �ƴϰ� CLERK�� �ƴ� ���
SELECT * FROM emp
    WHERE NOT (job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK');
    
-- AND
-- ���� NOT OR ������ AND �������� �ٲٸ�
-- ��å�� MANAGER�� �ƴϰ� SALESMAN �ƴϰ� CLERK�� �ƴ� ���
SELECT * FROM emp
    WHERE job != 'MANAGER'
    AND job != 'SALESMAN'
    AND job != 'CLERK';
    
-- OR
-- ����: ��å�� MANAGER�̰ų� SALESMAN �̰ų� CLERK�� ���
SELECT * FROM emp
    WHERE job = 'MANAGER'
    OR job = 'SALESMAN'
    OR job = 'CLERK';

-- IN : ���� OR ���ǰ� ������ ���
-- ����: ��å�� MANAGER�̰ų� SALESMAN �̰ų� CLERK�� ���
-- �����ʹ� ��ҹ��� �����Ѵ�.
SELECT * FROM emp
    WHERE job IN('MANAGER', 'SALESMAN', 'CLERK')
    ORDER BY job;


-- NOT IN : 
-- ����: ��å�� MANAGER�� �ƴϰ� SALESMAN�� �ƴϰ� CLERK�� �ƴ� ���
SELECT * FROM emp WHERE job != 'MANAGER' AND job != 'SALESMAN' AND job != 'CLERK';

SELECT * FROM emp
    WHERE job NOT IN('MANAGER', 'SALESMAN', 'CLERK')
    ORDER BY job;
    
-- IN
-- �μ��� 10, 20�� ���
SELECT * FROM emp
    WHERE deptno IN(10, 20);    

-- NOT IN
-- �μ��� 10�� �ƴϰ� 20�� �ƴ� ���
SELECT * FROM emp
    WHERE deptno NOT IN(10, 20);                                


-- �μ��� 10�� �ƴϰ� 20�� �ƴ� ����߿� ��å�� SALESMAN�� ���
-- ��������� �μ��� ���
-- �����ȣ�� �������� ����(SORT), ����̸����� �������� ����
-- �μ�: emp.deptno = dept.deptno

SELECT * FROM emp WHERE deptno NOT IN (10, 20);

SELECT * FROM emp WHERE job = 'SALESMAN';


-- �μ�����
SELECT e.empno, e.ename, e.job, e.deptno, d.dname
    FROM emp e, dept d
    WHERE e.deptno NOT IN (10, 20)
    AND e.job = 'SALESMAN'
    AND e.deptno = d.deptno
    ORDER BY e.empno desc, e.ename asc;

-- BETWEEN x AND y
-- sal ���� 2000���� 3000 ������ ���� �˻�
SELECT * FROM emp WHERE sal >= 2000 AND sal <= 3000;
SELECT * FROM emp WHERE sal BETWEEN 2000 AND 3000;

-- NOT BETWEEN x AND y
-- sal ���� 2000���� 3000 ������ ���� �ƴ� ������
SELECT * FROM emp WHERE sal < 2000 OR sal > 3000;
SELECT * FROM emp WHERE sal NOT BETWEEN 2000 AND 3000;

-- LIKE : ���ڿ��� �˻�
-- ����� �̸� �߿��� ù��° ���ڰ� 'J'�� �����ϴ� ����� ã�ƶ�
-- ã�� ���� �ڿ� %�� ����
SELECT * FROM emp WHERE ename LIKE 'J%';

SELECT * FROM emp WHERE ename LIKE 'A%'; -- A�� �����ϴ� ����� �̸�
SELECT * FROM emp WHERE ename LIKE 'B%'; -- B�� �����ϴ� ����� �̸�

-- ������ ���ڿ� ��ġ
-- Underscore(_)
SELECT * FROM emp WHERE ename LIKE '_L%'; -- ù��°�� ������ ���ڵڿ� L�� �̸�
SELECT * FROM emp WHERE ename LIKE '__L%'; -- ù��°�� �ι�°�� ������ ���ڵڿ� L�� �̸�

-- �����ڿ��� MAN���� ������ ��å
SELECT * FROM emp WHERE job LIKE '%MAN';

-- �߰��� ���ڿ��� 'AM'�� �����ϰ� �ִ� ���
SELECT * FROM emp WHERE ename LIKE '%AM%'; -- JAMES

-- �����ڰ� 'R'�� ������ �̸�
SELECT * FROM emp WHERE ename LIKE '%R'; 

-- 4���� ������ ���ڸ� ���� �̸�
SELECT * FROM emp WHERE ename LIKE '____'; 
