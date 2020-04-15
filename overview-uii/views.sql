create view info_deptos as with max_salary(name,maximo,suma, prom) as 
(select departments.department_name,max(employees.salary), sum(employees.salary), round(avg(employees.salary),2)  
from employees, departments where employees.department_id=departments.department_id group by departments.department_name)
select * from  max_salary;

select * from info_deptos;

create view dept_short_info as select name, suma from info_deptos;
select * from dept_short_info;

insert into info_deptos values ('Backend',20000)

-- maybe doesn't works
select * from dept_short_info;
insert into dept_short_info(name,suma) values ('Backend',20000)

create view c_view as select country_name from countries;
select *from c_view;
insert into c_view values('wakanda')