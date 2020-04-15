create table person(id integer,name VARCHAR2(255), email VARCHAR2(255) unique);

-- UNIQuE

insert into person values (1,'Zoilita','z@gmail.com');
--insert into person values (2,'Yaneth de mi vida','z@gmail.com'); -- it fails
insert into person values (2,'Ericksito',null);
insert into person values (3, 'Antonio', null); -- it works because unique only is applied with content and not nullables

-- CHECk
create table pizza(id integer,name VARCHAR2(255), time_cooked integer, constraint time_greater_zero check (time_cooked > 0));

insert into pizza values (1,'Peperoni', -2);

--  UPDATE AND DELETE CONSTRAINTS
update palabras set id='p-01' where id='x-01';
-- restrict: advertencia
-- cascade: actualizar total y delete total
-- set null: que hace realmente en update, delete nullea


create table persona(
    edad integer,
    id primary key,
    name VARCHAR2(20) not null,
    email VARCHAR2(300)  unique   
);



create table persona(
    edad integer,
    id integer,
    name VARCHAR2(20) ,
    email VARCHAR2(300),
    sub_email VARCHAR2(300)

    constraint check_age check (edad>0 and edad<100),
    constraint pk_id primary key id,
    constraint uni_id unique (email,sub_email) 
);