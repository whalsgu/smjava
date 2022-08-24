
[JDBC Driver]
https://www.oracle.com/kr/database/technologies/appdev/jdbc-downloads.html

Oracle Database 12.2.0.1 JDBC Driver & UCP Downloads
https://www.oracle.com/database/technologies/jdbc-ucp-122-downloads.html

https://www.oracle.com/database/technologies/jdbc-drivers-12c-downloads.html

Filename: ojdbc8.jar

-------------------------------------------------
Project:/lib/ojdbc8.jar

-------------------------------------------------
CREATE BIGFILE TABLESPACE SOLDB2 
    DATAFILE 
        'D:\ORACLE\12C\ORADATA\ORCL\SOLDB.DBF' SIZE 10485760 AUTOEXTEND ON NEXT 10485760 MAXSIZE UNLIMITED 
    BLOCKSIZE 8192 
    DEFAULT NOCOMPRESS 
    ONLINE 
    SEGMENT SPACE MANAGEMENT AUTO 
    EXTENT MANAGEMENT LOCAL AUTOALLOCATE;

-------------------------------------------------
ALTER SESSION SET "_ORACLE_SCRIPT"=true;

-- USER SQL
CREATE USER "SOLUSER" IDENTIFIED BY "SOLUSER"  
DEFAULT TABLESPACE "SOLDB"
TEMPORARY TABLESPACE "TEMP";

-- QUOTAS
ALTER USER "SOLUSER" QUOTA UNLIMITED ON "SOLDB";

-- ROLES
GRANT "CONNECT" TO "SOLUSER" ;
GRANT "RESOURCE" TO "SOLUSER" ;

-- SYSTEM PRIVILEGES
GRANT CREATE TRIGGER TO "SOLUSER" ;
GRANT CREATE VIEW TO "SOLUSER" ;
GRANT CREATE SESSION TO "SOLUSER" ;
GRANT CREATE TABLE TO "SOLUSER" ;
GRANT CREATE SEQUENCE TO "SOLUSER" ;


-----------------------------------------------------------------------------
CREATE TABLE HELLO
(
    HID VARCHAR2(10) NOT NULL,
    HNAME VARCHAR2(20) NOT NULL,
    HTEL VARCHAR2(20),
    CONSTRAINT HELLO_PK PRIMARY KEY(HID) ENABLE
);
