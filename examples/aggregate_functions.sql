-- minus
select employees.first_name from employees, departments where departments.manager_id is null minus select first_name from employees
-- agg functions
select sum(salary)  from employees;

select job_id, sum(salary) from employees group by job_id;

select job_id, count(employee_id) cantidad, sum(salary), avg(salary), min(salary),max(salary) from employees group by job_id order by cantidad desc

-- null cases
select count(commission_pct) from employees;
select count(*) from employees;
