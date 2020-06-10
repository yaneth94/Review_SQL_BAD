select employee_id, last_name, salary from employees order by salary fetch FIRST 5 percent rows only;
 
select employee_id, last_name, salary from employees order by salary desc fetch FIRST 5 percent rows only;


select employee_id, last_name, salary from employees order by salary desc fetch FIRST 5 PERCENT ROWS WITH TIES;

--sum days
select hire_date from employees where hire_date> '01/01/2003';

-- masive insertion

insert into prueba(at1,at2) select first_name,last_name from employees where salary>1000;  

-- join not needed where, no separating on in this case using on

select * from employees e join departments d on e.department_id=d.department_id and salary>1000;


create table sales(
    sales_id number(4),
    store_id number(4),
    item_id number(4),
    qty number default  1,
    sls_date date default sysdate,
    payment varchar2(30) default  'cash'
    
);