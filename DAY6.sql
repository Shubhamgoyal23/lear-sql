/*
 types of join
*/


USE store;
select * from customer;
select * from orders;
select * from product;

select * from customer JOIN orders on customer.cid = orders.cid;

SELECT * FROM customer c
JOIN orders o
ON c.cid = o.cid
JOIN product p
ON p.pid = o.pid;

select c.*,pname,price,qty,price*qty as Amount from customer c 
JOIN orders o on c.cid = o.oid JOIN product p
on p.pid=o.oid;

SELECT c.*,pname,price,qty,price*qty AS Amount, price*qty*0.18 AS TAX,
price*qty+price*qty*0.18 AS NetAmount FROM customer c 
JOIN orders o ON c.cid = o.cid JOIN product p ON p.pid = o.pid;

# CROSS JOIN / JOIN
SELECT * FROM customer c
JOIN orders o;

SELECT * FROM customer c
CROSS JOIN orders o;

# join / inner join
SELECT * FROM customer c
 JOIN orders o 
ON c.cid = o.cid;

SELECT * FROM customer c
INNER JOIN orders o 
ON c.cid = o.cid;

# LEFT JOIN / LEFT OUTER JOIN
SELECT * FROM customer c
LEFT JOIN orders o 
ON c.cid = o.cid;


 
