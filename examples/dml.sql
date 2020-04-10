-- DELETE

-- not to do
delete from tabla_x;

-- to do 
delete from tabla_x where id=5;

-- to delete from many relationships
delete from tabla_x inner join tabla_y on tabla_x.id = tabla_y.x_id where name='Dolor de cabeza';

-- INSERT

-- not specifying order, the same as the order from schema
insert into tablita values (1,'Zoilita','Dev')
-- insert with order
insert into tablita(name,id,profession) values ('Erick', 2, 'Zoilas boyfriend');
-- masively
insert into tablita values (3,'a','ing')
                           ,(4,'b','ing')
                           ,(5,'c', 'dev');
--  UPDATE

update tabla_x set attr=1.3, name='Pepon' where id=1;

UPDATE Books, Orders
SET Orders.Quantity = Orders.Quantity+2,
    Books.InStock = Books.InStock-2
WHERE
    Books.BookID = Orders.BookID
    AND Orders.OrderID = 1002;
