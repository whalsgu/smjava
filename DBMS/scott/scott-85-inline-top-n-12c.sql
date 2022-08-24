-- TOP-N
-- ������ ����
-- ��������, INLINE VIEW, ROWNUM Ȱ���ؼ� ó�� ����
-- ����Ŭ 12c �̻�(11g�� �������� ����)

-- ����߿��� �޿��� ���� ���� �޴� ����
SELECT empno, ename, sal FROM emp ORDER BY sal desc;

-- ����߿��� �޿��� ���� ���� �޴� ��� �ֻ��� 5��
-- ����Ŭ 12c �̻�(11g�� �������� ����)
SELECT empno, ename, sal 
    FROM emp ORDER BY sal desc
    FETCH FIRST 5 ROWS ONLY;

-- ����߿��� �޿��� ���� ���� �޴� ��� �ֻ��� 5��
SELECT empno, ename, sal 
    FROM emp ORDER BY sal asc
    FETCH FIRST 5 ROWS ONLY;    

-- �߰� ���� 5���� �ǳʶٰ� ���� 5���� ���ڵ带 ����
SELECT empno, ename, sal 
    FROM emp ORDER BY sal desc
    OFFSET 5 ROWS               -- ���� 5���� ���ڵ带 �ǳʶ�
    FETCH FIRST 5 ROWS ONLY;    -- 5���� ���ڵ带 ����

-- ����߿��� �޿��� ���� ���� �޴� ���
-- �߰� ���� 5���� �ǳʶٰ� ���� 5���� ���ڵ带 ����
SELECT empno, ename, sal 
    FROM emp ORDER BY sal
    OFFSET 5 ROWS               -- ���� 5���� ���ڵ带 �ǳʶ�
    FETCH FIRST 5 ROWS ONLY;    -- 5���� ���ڵ带 ����
