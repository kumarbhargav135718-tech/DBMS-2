-- Enable output in SQL*Plus / SQL Developer: SET SERVEROUTPUT ON
-- Assumptions: table/column names follow the practical statement.
CREATE OR REPLACE TRIGGER restrict_Sunday_access
BEFORE INSERT OR UPDATE OR DELETE ON EMP
BEGIN
 IF TO_CHAR(SYSDATE,'DY','NLS_DATE_LANGUAGE=ENGLISH') = 'SUN' THEN
  RAISE_APPLICATION_ERROR(-20001,'EMP table cannot be modified on Sunday');
 END IF;
END; /
