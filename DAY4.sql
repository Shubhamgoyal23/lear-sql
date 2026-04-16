CREATE DATABASE college;
USE college;
sid INT PRIMARY KEY AUTO_INCREMENT , 
sname VARCHAR(40) NOT NULL , 
semail VARCHAR(50) UNIQUE NOT NULL ,
sage INT NOT NULL CHECK (sage>17) , 
sgender VARCHAR(10) DEFAULT 'Male' ,
sfee DECIMAL(8,2) DEFAULT 0.0
);

INSERT INTO student(sname,semail,sage) 
VALUE('Rahul','rahul123@gmail.com',23);

SELECT * FROM student;
INSERT INTO student(sid,sname,semail,sage) 
VALUE(107,'Mohit','mohit123@gmail.com',23);

INSERT INTO student(sname,semail,sage,sgender) 
VALUE('Riya','riya123@gmail.com',23,'Female');


INSERT INTO student(sname,semail,sage,sgender) 
VALUE('Siya','siya123@gmail.com',22,'Female');

SELECT * FROM student;
INSERT INTO student(sname,semail,sage) 
VALUE('Mohan','mohan123@gmail.com',24);

INSERT INTO student(sname,semail,sage) 
VALUE('Rohan','rohan123@gmail.com',26);


SELECT * FROM student;

# CLAUSES
# LIMIT 
SELECT * FROM student;
SELECT * FROM student LIMIT 3;

ALTER TABLE student ADD COLUMN sadd VARCHAR(20) NOT NULL;


# Aggreage Functions
# 	sum , max , min , count , avg
SELECT * FROM student;
SELECT count(*) FROM student;
SELECT sum(sfee) FROM student;
SELECT max(sage) FROM student;
SELECT min(sage) FROM student;
SELECT avg(sage) FROM student;


# GROUP BY
SELECT count(*) FROM student;
SELECT sadd,count(*) FROM student GROUP BY sadd; 

SELECT sadd,sum(sage) FROM student GROUP BY sadd;
SELECT sname,sum(sage) FROM student GROUP BY sadd;
SELECT sadd,max(sage) FROM student GROUP BY sadd;