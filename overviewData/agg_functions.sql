
   SELECT last_name, salary, 
   STDDEV(salary) OVER (ORDER BY hire_date) "StdDev"
   FROM employees  
   WHERE department_id = 30;
   
   SELECT last_name, salary, 
   STDDEV_POP(salary) OVER (ORDER BY hire_date) "StdDev"
   FROM employees  
   WHERE department_id = 30;
   
   
   SELECT last_name, salary, 
   VAR_POP(salary) OVER (ORDER BY hire_date) "StdDev"
   FROM employees  
   WHERE department_id = 30;
  
   SELECT last_name, salary, 
   VARIANCE(salary) OVER (ORDER BY hire_date) "StdDev"
   FROM employees  
   WHERE department_id = 30;
     