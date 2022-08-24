-- 학생(STUDENT) 테이블에서 학과(SUBJECT) 테이블을 외부키로 참조
-- 1. 테이블 생성 순서 : SUBJECT -> STUDENT 
-- 2. 입력되는 순서    : SUBJECT -> STUDENT
-- 3. 삭제되는 순서    : STUDENT -> SUBJECT
--------------------------------------------------------------------------------
-- 참조되는 테이블의 데이터를 삭제할 때 참조하고 있는 데이터를 NULL로 변경
-- CONSTRANT 제약조건이름 REFERENCES 참조테이블(칼럼) ON DELETE SET NULL
--------------------------------------------------------------------------------

-- 학과 테이블
CREATE TABLE SUBJECT (
    SUBNO VARCHAR2(10) CONSTRAINT PK_SUBJECT_SUBNO PRIMARY KEY,         -- 학과번호
    SUBNAME VARCHAR2(20)                                                -- 학과명
);

-- 학생 테이블
-- ON DELETE SET NULL
CREATE TABLE STUDENT (
    SNO NUMBER(5) CONSTRAINT PK_STUDENT_SNO PRIMARY KEY,                -- 학번
    SNAME VARCHAR2(20),                                                 -- 이름
    SUBNO VARCHAR2(10) CONSTRAINT FK_SUBJECT_SUBNO REFERENCES SUBJECT(SUBNO) ON DELETE SET NULL  -- 학과
);

DROP TABLE STUDENT;
DROP TABLE SUBJECT;

--------------------------------------------------------------------------------
-- [입력되는 순서]
--------------------------------------------------------------------------------
-- 1. 학과 테이블
INSERT INTO SUBJECT VALUES( '2021-0001', '수학과');
INSERT INTO SUBJECT VALUES( '2021-0002', '국문과');
INSERT INTO SUBJECT VALUES( '2021-0003', '영문과');
INSERT INTO SUBJECT VALUES( '2021-0004', '경제학과');
INSERT INTO SUBJECT VALUES( '2021-0005', '컴퓨터학과');
-- INSERT INTO SUBJECT VALUES( '2021-0007', '인공지능학과');

SELECT * FROM SUBJECT;

-- 2. 학생 테이블
-- SUBJECT.SUBNO에 입력하는 데이터가 존재해야 한다.
INSERT INTO STUDENT VALUES ( 10000, '홍길동', '2021-0001');
INSERT INTO STUDENT VALUES ( 20000, '문학소녀', '2021-0002');
INSERT INTO STUDENT VALUES ( 30000, '외무부', '2021-0003');
INSERT INTO STUDENT VALUES ( 40000, '스티브', '2021-0004');
INSERT INTO STUDENT VALUES ( 50000, '워런버핏', '2021-0004');
INSERT INTO STUDENT VALUES ( 60000, '김성현', '2021-0005');

-- 조인
SELECT s.sno, s.sname, s.subno, j.subno, j.subname
    FROM student s, subject j
    WHERE s.subno = j.subno;
    
--------------------------------------------------------------------------------
-- [삭제]
--------------------------------------------------------------------------------
-- 2. 학과 테이블
-- '경제학과' 학생들의 데이터가 NULL로 변경 됨
DELETE FROM SUBJECT WHERE SUBNO = '2021-0004'; -- 경제학과
SELECT * FROM STUDENT;

-- 참조되는 칼럼에 데이터가 없으면 입력이 되지 않음
-- 오류: 무결성 제약조건(SOLUSER.FK_SUBJECT_SUBNO)이 위배되었습니다- 부모 키가 없습니다
INSERT INTO STUDENT VALUES (70000, '김영우', '2021-0007'); -- 인공지능학과

-- NULL로 임시로 넣을 수 있다.
INSERT INTO STUDENT VALUES (70000, '김영우', NULL);


