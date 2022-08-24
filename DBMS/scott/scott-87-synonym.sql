-- SYNONYM(동의어)
-- 사용법 :
-- CREATE SYNONYM 동의어이름 FOR 객체이름;
--------------------------------------------------------------------------------
-- 용도: 별칭으로서 긴 이름을 줄여서 쓸 때 유용

-- 생성
CREATE SYNONYM SG FOR SALGRADE;

SELECT * FROM SALGRADE;
SELECT * FROM SG;

DROP SYNONYM SG;