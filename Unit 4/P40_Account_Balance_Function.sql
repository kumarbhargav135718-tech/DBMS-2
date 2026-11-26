-- Enable output in SQL*Plus / SQL Developer: SET SERVEROUTPUT ON
-- Assumptions: table/column names follow the practical statement.
CREATE TABLE ACCOUNT (ACNO NUMBER PRIMARY KEY, CNAME VARCHAR2(50), BNAME VARCHAR2(50), BALANCE NUMBER(12,2));
CREATE OR REPLACE FUNCTION get_balance(p_acno IN NUMBER) RETURN NUMBER IS v_balance NUMBER;
BEGIN SELECT BALANCE INTO v_balance FROM ACCOUNT WHERE ACNO=p_acno; RETURN v_balance;
EXCEPTION WHEN NO_DATA_FOUND THEN RETURN NULL; END; /
BEGIN DBMS_OUTPUT.PUT_LINE('Balance='||NVL(TO_CHAR(get_balance(&acno)),'Account not found')); END; /
