-- 시퀀스(Sequence)
-- 순번 : 연속적으로 발행되는 일련번호
/*
CREATE SEQUENCE 시퀀스이름
    INCREMENT BY n      -- 증가값(기본값 1)
    START WITH n        -- 시작값(기본값 1)
    MAXVALUE n          -- 최대값
    MINVALUE n          -- 최소값(CYCLE인 경우 MAXVALUE에 도달 후 시작값)
    CYCLE | NOCYCLE     -- 최대값에 도달했을 때 시작값에서 다시 시작할 것인지 유무
    CACHE n | NOCACHE   -- 생성할 번호를 메모리에 미리 할당해 놓은 수를 지정할지 유무(기본값은 20)
*/

CREATE SEQUENCE hello_seq
    INCREMENT BY 10
    START WITH 10
    MAXVALUE 99
    MINVALUE 1
    -- NOCYCLE
    CYCLE
    NOCACHE;
    
DROP SEQUENCE hello_seq;    

SELECT * FROM user_sequences;

-- 다음 번호 발행 : 최초에 한 번은 시작을 해야 한다.
-- 번호가 발행되면서 증가
-- MAXVALUE에 도달한 후에 다시 실행하면 오류(NOCYCLE)
-- ORA-08004: 시퀀스 HELLO_SEQ.NEXTVAL exceeds MAXVALUE은 사례로 될 수 없습니다
SELECT hello_seq.nextval FROM dual;

-- 현재 번호 조회
SELECT hello_seq.currval FROM dual;

CREATE TABLE deptseq AS SELECT * FROM dept WHERE 1 <> 1;
SELECT * FROM deptseq;

INSERT INTO deptseq VALUES (hello_seq.nextval, 'EZ' || hello_seq.currval, 'SEONGNAM');
COMMIT;