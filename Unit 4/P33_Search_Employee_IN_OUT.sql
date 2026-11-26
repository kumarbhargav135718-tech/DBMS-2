-- Enable output in SQL*Plus / SQL Developer: SET SERVEROUTPUT ON
-- Assumptions: table/column names follow the practical statement.
CREATE OR REPLACE PROCEDURE search_emp(p_eid IN EMP.EID%TYPE,p_name OUT EMP.ENAME%TYPE) AS
BEGIN SELECT ENAME INTO p_name FROM EMP WHERE EID=p_eid;
EXCEPTION WHEN NO_DATA_FOUND THEN p_name:=NULL; END; /
DECLARE v_name EMP.ENAME%TYPE;
BEGIN search_emp(&eid,v_name); IF v_name IS NULL THEN DBMS_OUTPUT.PUT_LINE('Employee not found'); ELSE DBMS_OUTPUT.PUT_LINE('Employee: '||v_name); END IF; END; /
