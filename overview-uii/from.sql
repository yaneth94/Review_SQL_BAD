-- pgsql
select 'Hello there';

select 'hi there' as hi from inventario_producto;

select 'Hello There' || ' I am glad to see you' concat;

select * from countries where  country_name like '%en%'
select * from countries where  country_name like '%a_a%'

select * from countries where  country_name like 'a%a'
select * from countries where  country_name ilike 'A%a'


select * from employees where salary between 6000 and 9000;

select * from employees e, departments d where (e.department_id, d.department_name ) = (d.department_id,'Marketing')

select * from employees where manager_id is null;


-- having tried
select departments.department_name,round(avg(employees.salary),2) salary_prom 
from employees,departments 
where employees.department_id = departments.department_id 
group by employees.department_id, departments.department_name 
having avg(employees.salary) >10000 
