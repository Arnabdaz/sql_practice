-- @block create database company
CREATE DATABASE company;
-- @block use database company
USE company;
-- @block create table employee
CREATE TABLE employee (
  slno INT,
  id INT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  phone INT(10)
);
-- @block insert 5 rows of data into table employee
INSERT INTO employee (slno, id, name, email, phone)
VALUES (1, 123, 'John', 'john@email.com', 1234567890),
  (2, 124, 'Jane', 'jane@email.com', 1234567890),
  (3, 231, 'Joe', 'joe@email.com', 1234567890),
  (4, 342, 'Jack', 'jack@gmail.com', 1234567890),
  (5, 401, 'Jill', 'jill@gmail.com', 1234567890);
-- @block select the table and show all data
SELECT *
FROM employee;


-- output
-- "slno","id","name","email","phone"
-- 1,123,"John","john@email.com",1234567890
-- 2,124,"Jane","jane@email.com",1234567890
-- 3,231,"Joe","joe@email.com",1234567890
-- 4,342,"Jack","jack@gmail.com",1234567890
-- 5,401,"Jill","jill@gmail.com",1234567890