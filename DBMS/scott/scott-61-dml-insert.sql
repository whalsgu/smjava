-- INSERT
-- 날짜 데이터
-- YYYY/MM/DD, YYYY-MM-DD, YY/MM/DD, YY-MM-DD
-- YYYY.MM.DD, YYYY.MM.DD, YY.MM.DD


-- 테이블 EMP와 같은 빈 테이블 EMPX를 생성
CREATE TABLE empx AS SELECT * FROM emp WHERE 1 != 1;    -- 같지 않다, 거짓: WHERE 1 <> 1

-- 날짜형식 : YYYY/MM/DD(연도4자리/월2자리/일2자리)
-- 문자열('2021/11/25') -> DATE 형식으로 자동변환 입력
INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (1234, 'BOSS', 'CEO', null, '2021/11/25', 12345, null, 12);
    
-- 문자열('21/11/25') -> DATE(YY/MM/DD) 형식으로 자동변환 입력
INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (2468, '이인자', 'VICE-P', 1234, '21/11/25', 10000, 200, 21);    
    
INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (3030, '사미자', 'ACTOR', 3000, '21.11.25', 20000, 300, 30);        
    
-- 1999년 1월 10일 : 1999.1.10, 1999.01.10    
INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (5050, '오징어', '수영', 5000, '1999.1.10', 20000, 300, 30);       

INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (5051, '오징어1', '수영', 5000, '1999.01.10', 20000, 300, 30);       

-- MM-DD-YYYY : YY-MM-DD로 인식을 시도
INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (7070, '행운아', '금융', 7000, '07-17-2007', 70000, 777, 70);       

-- 03-07-13 : 2013년 3월 7일이 아니라 결과는 2003년 7월 13일
INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (7070, '행운아', '금융', 7000, '03-07-13', 70000, 777, 70);       
    
SELECT * FROM empx WHERE empno = 7070;    
SELECT hiredate, to_char(hiredate, 'YYYY-MM-DD') FROM empx WHERE empno = 7070;    
    
-- to_date(문자열, 포맷)
INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (7077, '행운7', '금융', 7000, to_date('07-17-2007', 'MM-DD-YYYY'), 70000, 777, 70);           
SELECT hiredate, to_char(hiredate, 'YYYY-MM-DD') FROM empx WHERE empno = 7077;    
    
-- 오늘 날짜 : 자료가 저장되는 시점으로 날짜를 지정
-- SYSDATE : 오늘의 시스템 날짜
INSERT INTO empx (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES (8080, '팔랑귀', '한량', null, sysdate, null, null, null);           
SELECT hiredate, to_char(hiredate, 'YYYY-MM-DD') FROM empx WHERE empno = 8080;    
    
    