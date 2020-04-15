
CREATE OR REPLACE FUNCTION categorizar(amount number) 
RETURN character varying
AS
BEGIN   
		IF amount > 10000 THEN 
			return 'The Amount is up to 10000';
		ELSIF amount > 3000 THEN
			return 'The Amount is down to 100000 and up to 3000';
		ELSE
			return 'The amount is down to 3000';
		END IF;
END;

select categorizar(salary), salary from employees;



create or replace function dept_count(dept_name varchar)
return int
is
d_count int :=0;
begin
    SELECT count(employees.department_id) into d_count from employees,departments where employees.department_id = departments.department_id and  departments.department_name = dept_name;
    return d_count;
end;

select dept_count('Marketing'), department_name from departments
select dept_count(department_name), department_name from departments