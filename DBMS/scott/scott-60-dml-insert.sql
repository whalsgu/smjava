-- DML(Data Manipulation Language)
-- 입력(INSERT), 조회(SELECT), 수정(UPDATE), 삭제(DELETE)

-- 입력(INSERT)
-- 테이블에 데이터를 추가
-- INSERT INTO 테이블이름 [ (칼럼1, 칼럼2, ...) ] VALUES (데이터1, 데이터2, ...);
-- 칼럼명을 명시하지 않으면 테이블의 모든 칼럼에 해당하는 데이터를 VALUES절에 기술
-- 칼럼명을 명시하면 명시된 칼럼에 대응하는 자료형에 맞게 VALUES절에 같은 갯수만큼 기술되어야 한다.


-- 테이블 dept의 데이터를 제외한 구조만 복제
CREATE TABLE deptx AS SELECT * FROM dept WHERE 1 <> 1;
DESC dept;
DESC deptx;
SELECT * FROM deptx;

-- INSERT : 칼럼명을 명시하지 않음
INSERT INTO deptx VALUES (11, '교육부', '성남');

-- INSERT : 칼럼명을 명시
INSERT INTO deptx (deptno, dname) VALUES(12, '마케팅');

-- INSERT : 순서를 바꿔도 된다(부서이름, 부서코드)
INSERT INTO deptx (dname, deptno) VALUES('영업부', 13);

-- 오류: 칼럼에 해당하는 자료형이 일치하지 않음
-- INSERT INTO deptx (dname, deptno) VALUES(14, '자재부'); 

-- INSERT : 모든 칼럼명을 명시
INSERT INTO deptx (deptno, dname, loc) VALUES (21, '회계부', '서울');

-- INSERT : 칼럼이 숫자(NUMBER)에 문자열을 넣으면?
-- 숫자로 변환이 가능한 문자열은 변환없이 지정 가능
INSERT INTO deptx (deptno, dname, loc) VALUES ('22', '총무부', '서울');

-- 오류: 숫자(NUMBER)형에 숫자로 변환이 불가능한 문자열을 지정할 수 없다.
-- INSERT INTO deptx (deptno, dname, loc) VALUES ('SS', '연구부', '강원');

-- 숫자로 변환이 가능한 문자열을 명시적으로 TO_NUMBER 함수를 사용
-- to_number(문자열, 숫자포맷) : 문자열을 숫자로 변환
SELECT to_number('31', '99') FROM dual;
INSERT INTO deptx (deptno, dname, loc) VALUES (to_number('31', '99'), '연구부', '강원');

-- 오류: 숫자로 변환이 불가능한 문자열을 명시적으로 TO_NUMBER 함수를 사용해도 오류
-- 문자열 'XY'는 숫자로 변환할 수 없다.
-- SELECT to_number('XY', '99') FROM dual;
-- INSERT INTO deptx (deptno, dname, loc) VALUES (to_number('XY', '99'), '구매부', '대전');

-- 명시된 칼럼의 갯수와 VALUES절에 기술된 갯수가 일치하지 않으면?
-- 칼럼 3개, VALUES 2개
-- 오류 : not enough values(값의 수가 충분하지 않습니다)
-- INSERT INTO deptx (deptno, dname, loc) VALUES (41, '무역부');
INSERT INTO deptx (deptno, dname) VALUES (41, '무역부');
INSERT INTO deptx (deptno, dname, loc) VALUES (42, '무역부2', null);

-- ''은 null로 처리
-- length(loc) : null, zero(0)이 아님
INSERT INTO deptx (deptno, dname, loc) VALUES (43, '무역부3', '');   
SELECT deptno, dname, loc, length(loc) FROM deptx WHERE deptno = 43;

-- dname을 null로 처리
INSERT INTO deptx (deptno, dname, loc) VALUES (44, null, '부산');   

-- 공백문자(space)는 보이지 않지만 1개의 문자로 처리
-- length(loc) : ' ', 1
INSERT INTO deptx (deptno, dname, loc) VALUES (45, '무역부5', ' ');   
SELECT deptno, dname, loc, length(loc) FROM deptx WHERE deptno = 45;

-- 칼럼에 지정된 크기를 넘어선 경우
-- TABLE DEPTX (
--      DEPTNO    NUMBER(2)    
--      DNAME     VARCHAR2(14) 
--      LOC       VARCHAR2(13) 
-- )
INSERT INTO deptx (deptno, dname, loc) VALUES (123, '부서123', '지역123');      -- 부서코드(deptno)의 크기 잘못(3자리)
INSERT INTO deptx (deptno, dname, loc) VALUES (51, 'abcdefghijklmnx', 'loc51'); -- 부서명(dname)의 크기 잘못(15자리)

-- 값이 한글이나 다국어인 경우 lengthb(?) 바이트 크기로 확인
SELECT '제품개발부', length('제품개발부'), lengthb('제품개발부') FROM dual;    -- length(5), UTF-8 -> lengthb(15)
INSERT INTO deptx (deptno, dname, loc) VALUES (52, '제품개발부', 'loc52');     -- 부서명(dname)의 크기 잘못(15자리)




