
-- EMP(사원정보)
CREATE TABLE EMP
(
	EMPNO    NUMBER(4) CONSTRAINT PK_EMP PRIMARY KEY,
	ENAME    VARCHAR2(10),
	JOB      VARCHAR2(9),
	MGR      NUMBER(4),
	HIREDATE DATE,
	SAL      NUMBER(7,2),
	COMM     NUMBER(7,2),
	DEPTNO   NUMBER(2) CONSTRAINT FK_DEPTNO REFERENCES DEPT
);

-- SQL Developer
CREATE TABLE "SCOTT"."EMP" 
(	"EMPNO"    NUMBER(4,0), 
	"ENAME"    VARCHAR2(10 BYTE), 
	"JOB"      VARCHAR2(9 BYTE), 
	"MGR"      NUMBER(4,0), 
	"HIREDATE" DATE, 
	"SAL"      NUMBER(7,2), 
	"COMM"     NUMBER(7,2), 
	"DEPTNO"   NUMBER(2,0), 
	 CONSTRAINT "PK_EMP" PRIMARY KEY ("EMPNO")
	 CONSTRAINT "FK_DEPTNO" FOREIGN KEY ("DEPTNO") REFERENCES "SCOTT"."DEPT" ("DEPTNO") ENABLE
)