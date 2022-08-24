-- 테이블 뷰(View)
-- 가상 테이블(Virtual Table)
-- 기존의 테이블을 다른 관점으로 바라본다.
-- DBMS에 저장된 쿼리로서 물리적으로 존재하는 테이블처럼 사용할 수 있다.
-- 장점:
--   1. 편리성(이미 작성된 쿼리에 의해서 뷰가 만들어져 있기 때문에 재사용 가능)
--   2. 보안성(기존의 테이블이나 쿼리를 감춤)

CREATE VIEW emp_dept30
    AS (SELECT * FROM emp WHERE deptno = 30);
    
SELECT * from emp_dept30;

-- 입력(INSERT) 가능
-- 원본에 반영
INSERT INTO emp_dept30 (empno, ename, job, deptno)
    VALUES (1234, 'ABCDE', 'STUDENT', 30);
    
-- VIEW를 생성할 때 사용한 검색조건에 해당하지 않아도 데이터 입력이 가능
-- 원본에 반영
INSERT INTO emp_dept30 (empno, ename, job, deptno)
    VALUES (4321, 'EDCBA', 'STUDENT', 20);

ROLLBACK;
SELECT * FROM emp;    

-- 뷰 테이블 삭제
-- 뷰를 통해서 입력(INSERT)한 후 ROLLBACK을 하지 않고 
-- DROP TABLE VIEW를 하면 입력한 내용이 커밋(COMMIT)이 된다.
DROP VIEW EMP_DEPT30;

DELETE FROM EMP WHERE empno in (1234, 4321);
commit;
