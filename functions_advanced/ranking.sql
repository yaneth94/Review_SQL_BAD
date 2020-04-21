
-- rank needs and over for put the atrribute to ranking 
-- it needs to be specif in which order
SELECT first_name,RANK() OVER (ORDER BY SALARY asc) rankeado, salary FROM  employees;

SELECT department_id, RANK() OVER ( partition by department_id ORDER BY SALARY desc) rankeado, salary FROM  employees
order by department_id, rankeado ;

-- percentiles
SELECT first_name,ntile(2) OVER (ORDER BY SALARY asc) q1, salary FROM  employees;

