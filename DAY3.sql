/*
DML= Data manipulatio language
     INSERT , SELECT , DELETE , UPDATE
*/
 
CREATE DATABASE school;
USE school;
CREATE TABLE student(
sid INT,
sname TEXT,
sadd TEXT,
smob TEXT
);
ALTER TABLE student ADD column semail TEXT;
describe student;

# INSERT 
# iNSERT INTO table_name VALUE(val1,val2,..);
INSERT INTO student
VALUE(101,'Rahul','Noida','823823923','rahul123@gmail.com');

# SELECT 
SELECT sid,sname,sadd,smob,semail FROM student;
SELECT * FROM student;    # * => ALL
SELECT sid,sname,semail FROM student;

# INSERT 
# INSERT INTO table_name(col1,col2,..) VALUE(val1,val2..);
INSERT INTO student(sid,sname,sadd,semail)
VALUE(102,'Mohan','Delhi','mohan123@gmail.com');

SELECT * FROM student;

INSERT INTO student VALUE 
(103,'Aman','Noida','853837456','aman123@gmail.com'),
(104,'Vikas','Delhi','862837954','vikas12233@gmail.com');

INSERT INTO student VALUES
(105,'Ritik',NULL,'823678364','ritik12@gmail.com'),
(106,'Rohit','Noida',NULL,'rohit123@gmail.com');

SELECT * FROM student;

# WHERE clause
SELECT * FROM student;
SELECT * FROM student WHERE sadd = 'noida';
SELECT * FROM student WHERE sid>103;


# IF safe mode is ON and you are unable to delete anything
SET SQL_SAFE_UPDATES = 0;

# DELETE
DELETE FROM student;   # It will erase all data of your table
