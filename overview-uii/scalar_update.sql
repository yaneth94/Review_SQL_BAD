update instructor
set salary = case
when salary <= 100000 then salary * 1.05
else salary * 1.03
end