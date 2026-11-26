-- Enable output in SQL*Plus / SQL Developer: SET SERVEROUTPUT ON
-- Assumptions: table/column names follow the practical statement.
CREATE OR REPLACE PROCEDURE raise_dept_salary(p_dept IN NUMBER,p_percent IN NUMBER) AS
BEGIN UPDATE EMP SET BASICSAL=BASICSAL+(BASICSAL*p_percent/100) WHERE DEPTNO=p_dept;
 DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT||' employee(s) updated'); END; /
BEGIN raise_dept_salary(&dept_no,&percentage); END; /
