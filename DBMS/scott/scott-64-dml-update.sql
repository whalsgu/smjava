-- 테이블에서 데이터 수정
-- 서브쿼리를 사용한 수정


SELECT * FROM empx;
SELECT * FROM deptx;

-- 여러개의 칼럼을 서브쿼리를 지정하여 수정
-- 부서코드가 12인 부서의 이름과 위치를
-- 부서코드가 41인 부서의 이름과 위치로 변경
UPDATE deptx
    SET (dname, loc) = (SELECT dname, loc FROM deptx WHERE deptno = 41)
    WHERE deptno = 12;

-- 각 칼럼별로 검색조건이 다를 때    
-- 각 칼럼별로 서브쿼리를 지정하여 수정
UPDATE deptx
    SET dname = (SELECT dname FROM deptx WHERE deptno = 13),
        loc = (SELECT loc FROM deptx WHERE deptno = 44)
    WHERE deptno IN (11,21,31,41);
        