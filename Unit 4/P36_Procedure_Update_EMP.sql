-- Enable output in SQL*Plus / SQL Developer: SET SERVEROUTPUT ON
-- Assumptions: table/column names follow the practical statement.
CREATE OR REPLACE PROCEDURE update_emp_basic AS
BEGIN UPDATE EMP SET BASICSAL=BASICSAL+500 WHERE DEPTNO=10; DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT||' rows updated'); END; /
BEGIN update_emp_basic; END; /
