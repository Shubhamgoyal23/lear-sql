/* 
JOINS 
store

customer (cid,cname,cadd,cmob)
product (pid,pname,price)
orders (oid,cid,pid,qty)

*/
CREATE DATABASE store;
USE store;
CREATE TABLE customer(
cid INT PRIMARY KEY auto_increment,
cname varchar (100) not null,
cadd varchar (100) not null,
cmob varchar (15) unique not null
);

insert into customer value(101,'Rohan Singh','Noida','78354834355');
insert into customer(cname,cadd,cmob) value 
('Mohan Singh','Delhi','9389483435'),
('Suresh Kumar','GZB','8752736834'),
("Riya Singh",'Noida','8623639745');
select * FROM customer;


CREATE TABLE product(
pid INT PRIMARY KEY auto_increment,
pname varchar (100) not null,
price DECIMAL (8,2) not null
);

insert into product value (501,'keyboad',985);
insert into product (pname,price) value
("Mouse",563),
("SSD",5021),
("HDD",4270),
("Monitor",5300);
select * from product;

CREATE TABLE orders(
oid INT PRIMARY KEY AUTO_INCREMENT ,
cid INT NOT NULL , 
pid INT NOT NULL , 
qty INT DEFAULT 1
); 
INSERT INTO orders(cid,pid,qty) VALUES
(102,504,5),
(103,502,7),
(108,503,7),
(103,509,4),
(109,509,5);

select* from orders;

# JOIN
# JOIN is use to display data from more then one table
# JOIN / CROSS JOIN 
SELECT * from customer
JOIN orders;

SELECT * FROM customer
CROSS JOIN orders;

#JOIN \ INNER JOIN (INTERSECTION\COMMON)

SELECT * from customer
JOIN orders
on customer.cid = orders.cid;

SELECT * from customer
INNER JOIN orders
on customer.cid = orders.cid;

SELECT * from customer AS c
INNER JOIN orders AS o
on c.cid = o.cid;

SELECT * from customer  c
INNER JOIN orders  o
on c.cid = o.cid;

#---------------------------------------------------------------

select*FROM customer
join orders
USING (cid);

select * from customer c
join orders o
on c.cid=o.cid
join product p
on o.pid=p.pid;

