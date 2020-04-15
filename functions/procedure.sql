-- store procedure we need to identify the out and in
create or replace procedure dept_count_procedure(dept_name in varchar, count_d  out integer)
is
begin
    SELECT count(employees.department_id) into count_d from employees,departments where employees.department_id = departments.department_id and  departments.department_name = dept_name;

end;


-- calling store procedure
SET SERVEROUTPUT ON

declare c integer; 
BEGIN
 dept_count_procedure('Marketing',c);
 Dbms_Output.Put_Line(c);
END;
