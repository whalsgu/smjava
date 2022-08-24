-- TOP-N
-- ������ ����
-- ��������, INLINE VIEW, ROWNUM Ȱ���ؼ� ó�� ����
-- ����Ŭ 11g

-- ����߿��� �޿��� ���� ���� �޴� ����
SELECT empno, ename, sal FROM emp ORDER BY sal desc;

-- rownum : ������ ���ڵ� ��ȣ
SELECT rownum, empno, ename, sal FROM emp;
SELECT rownum, empno, ename, sal FROM emp ORDER BY empno;

-- rownum : ������ ���ڵ� ��ȣ
SELECT rownum, empno, ename, sal 
    FROM emp 
    ORDER BY sal desc;

-- ���������� �ϰԵǸ� ���ο� ROWNUM�� �ο� 
-- ���� �ο��� ROWNUM�� ������ ������ ��ġ
SELECT rownum, empno, ename, sal 
    FROM (SELECT * FROM emp ORDER BY sal desc);

-- ����߿��� �޿��� ���� ���� �޴� ��� �ֻ��� 5��
SELECT rownum, empno, ename, sal 
    FROM (SELECT * FROM emp ORDER BY sal desc)
    WHERE rownum <= 5;

-- �˻��� ���� ����
SELECT rownum, empno, ename, sal 
    FROM (SELECT * FROM emp ORDER BY sal desc)
    WHERE rownum > 5;

    
-- �߰����� �˻�: 5���� �ǳʶٱ�
-- ����߿��� �޿��� ���� ���� �޴� ��� �ֻ��� 5��
SELECT rownum, e.* 
    FROM (SELECT rownum rnum, empno, ename, sal 
        FROM (SELECT * FROM emp ORDER BY sal desc) 
) e
WHERE rnum BETWEEN 6 AND 10;


-- ���� �˻��� ������ �ڷḦ �������� ���ο� �˻� ������ �����Ͽ�
-- �˻� ������ ��ҽ��Ѽ� ȿ���� ����
-- 5��° sal(2450)
SELECT rownum, e.empno, e.ename, e.sal 
    FROM (SELECT * FROM emp WHERE sal < 2450 ORDER BY sal desc) e
    WHERE rownum <= 5;


    
    
