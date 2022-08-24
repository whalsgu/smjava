-- 테이블에 데이터 삭제하기 : DELETE
-- DELETE [FROM] 테이블이름 [WHERE 조건문]

CREATE TABLE deptx2 AS SELECT * FROM deptx;
SELECT * FROM deptx2;

DELETE FROM deptx2;
DELETE deptx2;

DELETE FROM deptx2 WHERE loc LIKE '독도%';

-- [문제] 임시테이블 empx에서 
-- 급여등급이 등급 범위에 속하지 않는 모든 사원을 삭제
SELECT * FROM empx;
SELECT * FROM salgrade;

-- 급여등급이 등급 범위에 속하지 않는 모든 사원 정보
SELECT * FROM empx WHERE sal < 700 OR sal > 9999;
CREATE TABLE empx1 AS SELECT * FROM empx;
SELECT * FROM empx1 WHERE sal < 700 OR sal > 9999;

-- 급여등급 범위에 있는 사원
SELECT e.* 
    FROM empx1 e, salgrade s
    WHERE e.sal BETWEEN s.losal AND s.hisal;

-- 삭제할 데이터 검색
SELECT * FROM empx1
    WHERE empno NOT IN(SELECT e.empno
        FROM empx1 e, salgrade s
        WHERE e.sal BETWEEN s.losal AND s.hisal);

-- 검색된 데이터를 삭제
DELETE FROM empx1
    WHERE empno NOT IN(SELECT e.empno
        FROM empx1 e, salgrade s
        WHERE e.sal BETWEEN s.losal AND s.hisal);

SELECT * FROM empx1;

