-- Enable output in SQL*Plus / SQL Developer: SET SERVEROUTPUT ON
-- Assumptions: table/column names follow the practical statement.
CREATE OR REPLACE FUNCTION square_num(p_num IN NUMBER) RETURN NUMBER IS
BEGIN RETURN p_num*p_num; END; /
DECLARE n NUMBER:=&number;
BEGIN DBMS_OUTPUT.PUT_LINE('Square='||square_num(n)); END; /
-- SQL*Plus direct call: SELECT square_num(5) FROM dual;
