select  employee_id, department_id, salary from employees FETCH FIRST 5 ROWS ONLY
select  employee_id, department_id, salary from employees FETCH FIRST 10 PERCENT ROWS WITH TIES;
