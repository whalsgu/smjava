-- �� ����, ��Ÿ����

-- ��� �޿��� ���
SELECT * FROM emp e, salgrade s
    WHERE e.sal >= s.losal AND e.sal <= s.hisal;

SELECT * FROM emp e, salgrade s
    WHERE e.sal BETWEEN s.losal AND s.hisal;

