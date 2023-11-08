-- @block create database student
CREATE DATABASE student;
-- @block use database student
USE student;

-- @block create table student1
CREATE TABLE student1(
  Id INT PRIMARY KEY,
  Name VARCHAR(255),
  email VARCHAR(255)
);

-- @block create table student2
CREATE TABLE student2(
  Id INT PRIMARY KEY,
  Name VARCHAR(255),
  email VARCHAR(255)
);

-- @block insert data into table student1
INSERT INTO student1(Id, Name, email)
VALUES(1, 'John', 'john@email.com'),
  (2, 'Mike', 'mike@email.com'),
  (3, 'Mary', 'mary@email.com'),
  (4, 'Jane', 'jane@email.com'),
  (5, 'Jack', 'jack@email.com');

-- @block insert data into table student2
INSERT INTO student2(Id, Name, email)
VALUES(6, 'Dev', 'dev@email.com'),
  (7, 'Doe', 'doe@email.com'),
  (3, 'Mary', 'mary@email.com'),
  (8, 'Brown', 'brown@email.com'),
  (1, 'John', 'john@email.com');

-- @block union
SELECT * FROM student1
UNION
SELECT * FROM student2

-- output:
-- "Id","Name","email"
-- 1,"John","john@email.com"
-- 2,"Mike","mike@email.com"
-- 3,"Mary","mary@email.com"
-- 4,"Jane","jane@email.com"
-- 5,"Jack","jack@email.com"
-- 6,"Dev","dev@email.com"
-- 7,"Doe","doe@email.com"
-- 8,"Brown","brown@email.com"


-- @block union all
SELECT * FROM student1
UNION ALL
SELECT * FROM student2

-- output
-- "Id","Name","email"
-- 1,"John","john@email.com"
-- 2,"Mike","mike@email.com"
-- 3,"Mary","mary@email.com"
-- 4,"Jane","jane@email.com"
-- 5,"Jack","jack@email.com"
-- 1,"John","john@email.com"
-- 3,"Mary","mary@email.com"
-- 6,"Dev","dev@email.com"
-- 7,"Doe","doe@email.com"
-- 8,"Brown","brown@email.com"

-- @block intersect
SELECT * FROM student1
INTERSECT
SELECT * FROM student2

-- output:
-- "Id","Name","email"
-- 1,"John","john@email.com"
-- 3,"Mary","mary@email.com"

-- @block minus
SELECT * FROM student1
MINUS
SELECT * FROM student2

-- output:
-- "Id","Name","email"
-- 2,"Mike","mike@email.com"
-- 4,"Jane","jane@email.com"
-- 5,"Jack","jack@email.com"
