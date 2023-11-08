-- @block create a database named employee
CREATE DATABASE employee;
-- @block use database employee
USE employee;
-- @block create table t1
CREATE TABLE t1(
  name VARCHAR(255),
  EmpNo INT PRIMARY KEY,
  salary INT
);
-- @block create table t2
CREATE TABLE t2(EmpNo INT PRIMARY KEY, email VARCHAR(255));
-- @block insert 5 rows into table t1
INSERT INTO t1(name, EmpNo, salary)
VALUES('John', 1, 1000),
  ('Mike', 2, 2000),
  ('Mary', 3, 3000),
  ('Jane', 4, 4000),
  ('Jack', 5, 5000);
-- @block insert 5 rows into table t2
INSERT INTO t2(EmpNo, email)
VALUES(1, 'john@email.com'),
  (2, 'mike@email.com'),
  (3, 'mary@email.com'),
  (4, 'jane@email.com'),
  (5, 'jack@email.com');
-- @block use alias operation to perform inner join
SELECT a.name, a.EmpNo, a.salary, b.email
FROM t1 AS a 
INNER JOIN t2 AS b 
ON a.EmpNo = b.EmpNo;


-- output:
-- "name","EmpNo","salary","email"
-- "John",1,1000,"john@email.com"
-- "Mike",2,2000,"mike@email.com"
-- "Mary",3,3000,"mary@email.com"
-- "Jane",4,4000,"jane@email.com"
-- "Jack",5,5000,"jack@email.com"

-- @block use of like operator
SELECT * FROM t1 WHERE name LIKE "_a%";

-- output:
-- "name","EmpNo","salary"
-- "Mary",3,3000
-- "Jane",4,4000
-- "Jack",5,5000
