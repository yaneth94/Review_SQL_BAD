select *from employees where salary > 12000

select employee_id from employees where salary > 12000

select employee_id from (select * from employees where salary >12000)

select prueba.at1 from prueba union select prueba2.at1  from prueba2


--names of employees that belogs to marketing department
select * from departments --Marketing

select first_name || ' ' || last_name from 
(select * from departments, employees where departments.department_id = employees.department_id)  
where department_name ='Marketing';


select dep.first_name || ' ' || dep.last_name fullname from 
(select * from departments, employees where departments.department_id = employees.department_id)  dep
where dep.department_name ='Marketing';

--todos los empleados que pertenecen al dep de marketing pero que no tienen historial de trabajo
select employee_id from 
(select * from departments, employees where departments.department_id = employees.department_id)  
where department_name ='Marketing'
minus
select jh.employee_id from job_history jh 


--get the min salary with cartesian product and minus
select distinct salary from employees minus select distinct employees.salary  from employees, employees e 
where employees.salary > e.salary 

--get the max salary with cartesian product and minus
select distinct salary from employees minus select distinct employees.salary  from employees, employees e 
where employees.salary < e.salary 