-- Enable output in SQL*Plus / SQL Developer: SET SERVEROUTPUT ON
-- Assumptions: table/column names follow the practical statement.
CREATE OR REPLACE PROCEDURE show_message AS BEGIN DBMS_OUTPUT.PUT_LINE('Welcome to PL/SQL Procedure'); END; /
BEGIN show_message; END; /
