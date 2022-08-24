-- DUAL : 오라클에서 제공하는 특수한 테이블
-- 더미(dummy) 테이블 : DUMMY VARCHAR2(1) 

DESC dual;
SELECT dummy FROM dual;

-- character set
SELECT * FROM nls_database_parameters WHERE parameter = 'NLS_CHARACTERSET';

-- DUAL : 오라클에서 제공하는 특수한 테이블
SELECT '한글' as hangeul, length('한글') hanlen, lengthb('한글') as hanlenb FROM dual;

-- 오늘날짜
SELECT sysdate FROM dual;

SELECT * FROM emp;
SELECT upper('james') as abc FROM dual;

SELECT * FROM emp WHERE ename = (SELECT upper('james') as abc FROM dual);

