select * from countries where country_name in (select country_name from countries where country_name like '_e%' )

select salary from employees where department_id = 10

select * from employees where salary > some (select salary from employees where department_id = 10 )

select * from employees where salary < some (select salary from employees where department_id = 20 )

select * from employees where salary = some (select salary from employees where department_id = 20 )

select * from employees where salary > all (select salary from employees where department_id = 20 )

select * from regions where region_id=1 and exists (select * from countries where region_id=20);