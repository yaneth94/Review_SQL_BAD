-- agrupacion en cubo
select first_name, job_id, sum(salary) ,
from employees
group by cube (first_name,job_id)


-- agrupa y da 1 cuando es nulo 
select first_name, job_id, sum(salary) ,
grouping(first_name) first_tag,
grouping(job_id) job_tag
from employees
group by cube (first_name,job_id)

-- agrupa y da 1 cuando es nulo  y decodifica para colocar all en ves null
select first_name, job_id, sum(salary) ,
decode(grouping(first_name),1,'all',first_name) first_tag,
decode(grouping(job_id),1,'all',job_id) job_tag
from employees
group by cube (first_name,job_id)




-- agrupa cada elemento y obtiene su resultado, con nullo en la columna idonea total indicando la cantidad bajo ese
-- grupo y los resultados existentes de la agrupacion.

select first_name, job_id, sum(salary) 
from employees
group by rollup (first_name), rollup(job_id)
-- agrupa cada elemento y obtiene su resultado, con nullo en la columna idonea total indicando la cantidad bajo ese
-- grupo y los resultados existentes de la agrupacion.
-- remplaza etiquetas por all (nulas)

select first_name, job_id, sum(salary),
decode(grouping(first_name),1,'all',first_name) first_tag,
decode(grouping(job_id),1,'all',job_id) job_tag
from employees
group by rollup (first_name), rollup(job_id)

