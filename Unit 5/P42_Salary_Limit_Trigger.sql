-- Enable output in SQL*Plus / SQL Developer: SET SERVEROUTPUT ON
-- Assumptions: table/column names follow the practical statement.
CREATE OR REPLACE TRIGGER salary_limit
BEFORE INSERT OR UPDATE OF BASICSAL ON EMP
FOR EACH ROW
BEGIN IF :NEW.BASICSAL>50000 THEN RAISE_APPLICATION_ERROR(-20002,'Salary cannot exceed Rs. 50000'); END IF; END; /
