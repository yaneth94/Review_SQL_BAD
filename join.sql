-- tables created and data
-- attribs are at1,at2,at3
insert into prueba2 values('abc','xy','ok');
insert into prueba2 values('abc', 'xy','lol');  
insert into prueba2 values ('ab', 'wz', 'guapo');
-- atrribs are at1,at2
insert into prueba values('abc','xy');
insert into prueba values('def', 'wz');  


-- pure natural without 'natural join'
select * from prueba,prueba2 where prueba2.at1=prueba.at1 and prueba2.at2=prueba.at2;
-- natural join with function provided
select * from prueba natural join prueba
-- another example
select * from departments natural join locations;