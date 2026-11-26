-- Enable output in SQL*Plus / SQL Developer: SET SERVEROUTPUT ON
-- Assumptions: table/column names follow the practical statement.
CREATE OR REPLACE PROCEDURE raise_dept_fixed(p_dept IN NUMBER,p_amount IN NUMBER) AS
BEGIN UPDATE EMP SET BASICSAL=BASICSAL+p_amount WHERE DEPTNO=p_dept; DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT||' employee(s) updated'); END; /
BEGIN raise_dept_fixed(&dept_no,&amount); END; /
