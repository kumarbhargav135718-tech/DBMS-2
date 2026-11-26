-- Enable output in SQL*Plus / SQL Developer: SET SERVEROUTPUT ON
-- Assumptions: table/column names follow the practical statement.
CREATE OR REPLACE TRIGGER employee_title
BEFORE INSERT OR UPDATE OF ENAME,GENDER ON EMP
FOR EACH ROW
BEGIN
 IF UPPER(:NEW.GENDER) IN ('M','MALE') THEN :NEW.ENAME:='MR. '||:NEW.ENAME;
 ELSIF UPPER(:NEW.GENDER) IN ('F','FEMALE') THEN :NEW.ENAME:='MS. '||:NEW.ENAME; END IF;
END; /
