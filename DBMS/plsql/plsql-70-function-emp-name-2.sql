-- 함수(FUNCTION) 호출

SELECT '7900' AS EMPNO, func_emp_name_in_return(7900) FROM DUAL;
SELECT '7566' AS EMPNO, func_emp_name_in_return(7566) FROM DUAL;

SELECT empno, ename, func_emp_name_in_return(empno) FROM EMP;
