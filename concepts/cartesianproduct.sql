-- renamed with as is not valid so the query bellow doesnt work
select * from employees as emp, employees as emp2;
-- this works correctly
select * from employees emp, employees emp2;