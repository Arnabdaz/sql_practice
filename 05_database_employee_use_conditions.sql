-- @block create database employee
CREATE DATABASE employee;
-- @block use database employee
USE employee;
-- @block create table t1
CREATE TABLE t1(
  EmpId INT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  job VARCHAR(30),
  join_date DATE,
  Exp_in_year INT,
  salary INT
);
-- @block insert data into table t1
INSERT INTO t1(EmpId, first_name, last_name, job, join_date, Exp_in_year, salary)
VALUES(1, 'John', 'Smith', 'CEO', '2018-01-01', 10, 100000),
(2, 'Jane', 'Smith', 'DEVREL', '2020-10-10', 4, 50000),
(3, 'Jill', 'Doe', 'HR', '2019-05-09', 6, 50000),
(4, 'Mike', 'Dev', 'DEVELOPER', '2021-07-23', 2, 80000),
(5, 'Jack', 'Brown', 'DEVOPS', '2022-04-21', 3, 75000);

-- @block find employee with salary > 50000 except EmpId = 1 & return first_name,last_name:
SELECT first_name, last_name FROM t1 
  WHERE salary > 50000 AND EmpId != 1


-- output:
-- "first_name","last_name"
-- "Mike","Dev"
-- "Jack","Brown"
