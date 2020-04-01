-- selection
select * from employees where salary>12000
-- proyection with some additional things concat
select first_name || ' ' || last_name as full_name from employees;
-- proyection ideal by alg rel
select distinct at1,at2 from prueba2;

--cartesian product
-- simple way
select * from countries, regions;
-- function way 
select * from countries cross join regions;

-- union
select prueba.at1 from prueba union select prueba2.at1 from prueba2

-- minus - substract
select prueba.at1 from prueba minus select prueba2.at1 from prueba2

