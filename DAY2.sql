# singal line cooment
/*
multiple
line
comments
*/
# DDL Data definition language
# CREATE , ALTER, DROP

/* how to create an database?
syntax=
CREATE DATABASE database_name;
*/

CREATE DATABASE Shubham;
#sql in not case sentive

create database school;

# how to delete a database?
/* 
syntax= 
DROP DATABASE database_name; 
*/

DROP DATABASE shubham;
drop database sys;


# how to select a database
#USE database_name;
USE school;

/* 
how to create a table in database
CREATE TABLE table_name(col_name Dtype,col_name Dtype.....)
*/

CREATE TABLE student(
student_id INT,
student_name TEXT,
student_add TEXT,
student_mobile TEXT
);

#ALTER
# how to add a new colum
# ALTER TABLE table_name ADD COLUMN col_name Dtype;
ALTER TABLE student ADD COLUMN student_email TEXT;

# How to delete a column in a Table
ALTER TABLE student DROP COLUMN student_mobile;

# How to describe a table?
# DESCRIBE table_name;
DESCRIBE student;

# how to change the Dtpye of coulum?
ALTER TABLE student MODIFY student_id TEXT;

DROP TABLE student;



# show table;
SHOW TABLES;
CREATE TABLE trainer(
tid INT,
tname TEXT,
taddress TEXT
);

ALTER TABLE trainer ADD COLUMN tmobile TEXT;
DESCRIBE trainer;

ALTER TABLE trainer MODIFY tmobile BIGINT;

ALTER TABLE trainer DROP taddress;

DROP TABLE trainer;
DROP DATABASE school;

/*practice
work
*/

# createthe database of office empyoisee

CREATE DATABASE office;
USE office;

CREATE TABLE empyuoisee (
Ename TEXT,
Eaddress TEXT,
Emobile TEXT,
Eemail TEXT
);

DESCRIBE empyuoisee;
ALTER TABLE empyuoisee DROP column Eaddress;

