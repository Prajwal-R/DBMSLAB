CREATE TABLE DEPARTMENT(
DNO NUMBER(4) PRIMARY KEY,
DNAME VARCHAR2(15),
MGRSSN VARCHAR2(13),
MGRSTARTDATE DATE);

CREATE TABLE EMPLOYEE
(SSN VARCHAR2 (10) PRIMARY KEY,
FNAME VARCHAR2 (8),
LNAME VARCHAR2 (8),
ADDRESS VARCHAR2 (10),
SEX CHAR (1),
SALARY NUMBER(10, 2),
SUPERSSN VARCHAR2 (10),
DNO NUMBER (4) REFERENCES DEPARTMENT (DNO) ON DELETE CASCADE,
FOREIGN KEY (SUPERSSN) REFERENCES EMPLOYEE (SSN));

CREATE TABLE DLOCATION (
DNO NUMBER (4) REFERENCES DEPARTMENT (DNO) ON DELETE CASCADE,
DLOC VARCHAR2 (10),
PRIMARY KEY (DNO, DLOC));

CREATE TABLE PROJECT(
PNO NUMBER(5) PRIMARY KEY,
PNAME VARCHAR2 (20),
PLOCATION VARCHAR2 (20),
DNO NUMBER (4) REFERENCES DEPARTMENT (DNO) ON DELETE CASCADE);

CREATE TABLE WORKS_ON
(
SSN VARCHAR2 (10) REFERENCES EMPLOYEE (SSN) ON DELETE CASCADE,
PNO NUMBER(5) REFERENCES PROJECT (PNO) ON DELETE CASCADE,
HOURS NUMBER (4),
PRIMARY KEY (SSN, PNO)
);