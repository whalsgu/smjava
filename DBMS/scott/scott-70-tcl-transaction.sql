-- 트랜잭션(Transaction)
-- 하나의 논리적인 작업을 처리하기 위해 서로 연관되고 연속된 데이터베이스 명령어(DML)의 집합.
-- TCL(Transaction Control Language)
-- 1. 하나의 논리적인 작업 단위
-- 2. 하나의 작업 또는 밀접하게 연관되어 있는 작업 수행을 위해 나눌 수 없는 최소 수행 단위
-- 3. 하나의 트랜잭션은 여러 DML 명령으로 이루어 진다.
-- 4. 커밋(COMMIT)에 의해서 트랜잭션이 완료된다.
-- 5. 취소(ROLLBACK)에 의해서 수행된 SQL(DML)문이 취소 처리된다.

CREATE TABLE deptr AS SELECT * FROM dept;
SELECT * FROM deptr;

-- [트랜잭션 1]
-- 1. 신규추가
INSERT INTO deptr VALUES(90, 'APG', 'SEOUL');
INSERT INTO deptr VALUES(99, 'DBA', 'SEONGNAM');

-- 2. 자료수정
UPDATE deptr SET loc = 'DAEJEON' WHERE deptno = 90;

-- 3. 자료삭제
DELETE FROM deptr WHERE deptno = 99;

-- 4. 작업취소
-- 1번 작업 이전 상태로 돌아감
ROLLBACK;

-- 5. 작업완료
-- 다시 1번부터 3번까지 처리하고
-- 4번 작업을 건너뛰고
-- 5번 작업으로 이동
-- 1번부터 3번작업의 내용이 반영
COMMIT; -- 트랜잭션이 완료
SELECT * FROM deptr;
-- deptno(90)은 남아 있다.
-- 커밋을 한 후에는 롤백을 해도 작업이전 상태로 돌아가지 않음
ROLLBACK;   
SELECT * FROM deptr;
