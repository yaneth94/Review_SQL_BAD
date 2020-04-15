-- using having
select departments.department_name,round(avg(employees.salary),2) salary_prom 
from employees,departments 
where employees.department_id = departments.department_id 
group by employees.department_id, departments.department_name 
having avg(employees.salary) >10000 

-- avoiding having
select department_name, avg_salary from (select departments.department_name,round(avg(employees.salary),2) avg_salary 
from employees,departments 
where employees.department_id = departments.department_id 
group by employees.department_id, departments.department_name )where avg_salary>10000


with max_salary(name,maximo,suma, prom) as 
(select departments.department_name,max(employees.salary), sum(employees.salary), round(avg(employees.salary),2)  
from employees, departments where employees.department_id=departments.department_id group by departments.department_name)
select * from  max_salary;

