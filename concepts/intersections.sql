-- using intersect way
select * from employees where salary >10000 
intersect
select * from employees where manager_id =100;

select * from employees where salary >10000 
intersect
select * from employees where manager_id is null;

(select * from employees where salary >10000 
minus
select * from employees where manager_id =100;)

select * from employees where salary >10000 
intersect -- and
select * from employees where salary<17000;
-- minus intersect way
select * from employees where salary >10000 
minus
(select * from employees where salary >10000 
minus
select * from employees where manager_id =100)

select * from employees where salary >10000 
minus
(select * from employees where salary >10000 
minus
select * from employees where manager_id is null)

-- selection way
select * from employees where salary >10000 and manager_id is null