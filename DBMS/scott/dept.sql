
-- DEPT(부서)
CREATE TABLE DEPT
(
	DEPTNO NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,
	DNAME  VARCHAR2(14),
	LOC    VARCHAR2(13) 
);

CREATE TABLE "SCOTT"."DEPT" 
(
	"DEPTNO" NUMBER(2,0), 
	"DNAME"  VARCHAR2(14 BYTE), 
	"LOC"    VARCHAR2(13 BYTE), 
	CONSTRAINT "PK_DEPT" PRIMARY KEY ("DEPTNO")
	TABLESPACE "USERS"  ENABLE
) TABLESPACE "USERS";
