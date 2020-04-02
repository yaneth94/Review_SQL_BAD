-- id europe
select * from countries where country_id like '%E%'
minus 
select * from countries where region_id = 1 