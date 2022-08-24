-- 테이블 뷰(View)
-- 가상 테이블(Virtual Table)
-- 기존의 테이블을 다른 관점으로 바라본다.
-- DBMS에 저장된 쿼리로서 물리적으로 존재하는 테이블처럼 사용할 수 있다.
-- 장점:
--   1. 편리성(이미 작성된 쿼리에 의해서 뷰가 만들어져 있기 때문에 재사용 가능)
--   2. 보안성(기존의 테이블이나 쿼리를 감춤)

SELECT * FROM emp;
SELECT e.empno, e.ename, e.job, d.deptno, d.dname, d.loc
    FROM emp e, dept d
    WHERE e.deptno = d.deptno;
    
-- 뷰 : 조인
CREATE OR REPLACE VIEW emp_dept
    AS (SELECT e.empno, e.ename, e.job, d.deptno, d.dname, d.loc
    FROM emp e, dept d
    WHERE e.deptno = d.deptno);

SELECT * FROM USER_VIEWS;    

SELECT * FROM emp_dept;

-- 입력(INSERT) : 조인에 의해 만들어진 뷰는 입력을 할 수 없다.
-- 오류: ORA-01776: 조인 뷰에 의하여 하나 이상의 기본 테이블을 수정할 수 없습니다.
INSERT INTO emp_dept VALUES (9999, 'NineNine', 'Student', 30, 'SALES', 'CHICAGO');

SELECT * from emp_dept;

-- 뷰 삭제
DROP VIEW EMP_DEPT;

