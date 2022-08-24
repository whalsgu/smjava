-- ��¥ 
-- sysdate : ���� ��¥
-- add_months : ���� �ٷ�� �Լ�

-- ���� ��¥
SELECT sysdate FROM dual;
SELECT sysdate as today, ename FROM emp;

-- ���� ��¥
SELECT sysdate + 1 as tomorrow FROM dual;

-- ���� ��¥
SELECT sysdate - 1 as yesterday FROM dual;

-- ������ ���� ��¥
SELECT sysdate + 7 as tomorrow FROM dual;

-----------------------------------------------------------------
-- add_months(��¥������, ���� ���� ��)

-- ���� ��(�� �� ��)
SELECT add_months(sysdate, 1) as nextmonth FROM dual;

-- ���� ��(�� �� ��)
SELECT add_months(sysdate, -1) as nextmonth FROM dual;

-----------------------------------------------------------------
-- �Ի� 10���� ��� ����(�Ի� 10���� �Ǵ� ��¥)
SELECT empno, ename, hiredate, add_months(hiredate, 10 * 12) FROM emp;

-- �Ի� 40���� �Ǵ� ��¥
SELECT empno, ename, hiredate, add_months(hiredate, 40 * 12) FROM emp;  

-- �Ի� 40�� �̸��� �������
SELECT empno, ename, hiredate, add_months(hiredate, 40 * 12) 
    FROM emp
    WHERE add_months(hiredate, 40 * 12) > sysdate;

-- �Ի� 40�� �̻��� �������
SELECT empno, ename, hiredate, add_months(hiredate, 40 * 12) 
    FROM emp
    WHERE add_months(hiredate, 40 * 12) <= sysdate;

-- �Ի� 40�� �̻��� �������
-- �Ի� 40�� ���� ����� �ϼ�: ��¥������ - ��¥������
SELECT empno, ename, hiredate, add_months(hiredate, 40 * 12), sysdate - add_months(hiredate, 40 * 12) as passdate
    FROM emp
    WHERE add_months(hiredate, 40 * 12) <= sysdate;

SELECT empno, ename, hiredate, add_months(hiredate, 40 * 12), trunc(sysdate - add_months(hiredate, 40 * 12)) as passdate
    FROM emp
    WHERE add_months(hiredate, 40 * 12) <= sysdate;
