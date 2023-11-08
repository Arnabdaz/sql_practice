-- @block create database college
CREATE DATABASE college;
-- @block use database college
USE college;
-- @block create table student
CREATE TABLE student(
  enrol VARCHAR(30),
  name VARCHAR(255),
  regno INT PRIMARY KEY,
  sem INT(2),
  subject VARCHAR(255)
);
-- @block insert 7 rows into the table student
INSERT INTO student(enrol, name, regno, sem, subject)
VALUES('21UCS222', 'Raj', 101, 3, 'DBMS'),
  ('21UCS333', 'Abi', 112, 2, 'CG'),
  ('21UCS444', 'Bunty', 123, 4, 'OS'),
  ('21UCS555', 'Dev', 129, 5, 'Crypto'),
  ('21UCS666', 'Eva', 130, 2, 'CG'),
  ('21UCS777', 'Adi', 138, 4, 'OS'),
  ('21UCS888', 'Ganesh', 142, 8, 'CAO');

-- @block display all the rows & columns in the table student
SELECT * FROM student;

-- output
-- "enrol","name","regno","sem","subject"
-- "21UCS222","Raj",101,3,"DBMS"
-- "21UCS333","Abi",112,2,"CG"
-- "21UCS444","Bunty",123,4,"OS"
-- "21UCS555","Dev",129,5,"Crypto"
-- "21UCS666","Eva",130,2,"CG"
-- "21UCS777","Adi",138,4,"OS"
-- "21UCS888","Ganesh",142,8,"CAO"

-- @block display selective columns in the table student
SELECT enrol, regno FROM student;

-- output
-- "enrol","regno"
-- "21UCS222",101
-- "21UCS333",112
-- "21UCS444",123
-- "21UCS555",129
-- "21UCS666",130
-- "21UCS777",138
-- "21UCS888",142

-- @block display selective columns in the table with where condition
SELECT enrol, name, regno FROM student WHERE SUBJECT = 'OS';

-- output
-- "enrol","name","regno"
-- "21UCS444","Bunty",123
-- "21UCS777","Adi",138


-- @block select distinct (column) from table student
SELECT DISTINCT (sem) FROM student;

-- output
-- "sem"
-- 3
-- 2
-- 4
-- 5
-- 8

-- @block update column name
ALTER TABLE student CHANGE sem semester INT;

-- after alteration of column name final table with new column:
-- "enrol","name","regno","semester","subject"
-- "21UCS222","Raj",101,3,"DBMS"
-- "21UCS333","Abi",112,2,"CG"
-- "21UCS444","Bunty",123,4,"OS"
-- "21UCS555","Dev",129,5,"Crypto"
-- "21UCS666","Eva",130,2,"CG"
-- "21UCS777","Adi",138,4,"OS"
-- "21UCS888","Ganesh",142,8,"CAO"