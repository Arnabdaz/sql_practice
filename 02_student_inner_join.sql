-- @block create database student
CREATE DATABASE student;
-- @block use database student
USE student;
-- @block create table t1
CREATE TABLE t1(
  name VARCHAR(255),
  Id INT PRIMARY KEY,
  sem INT(2),
  phone INT(10)
);
-- @block create table t2
CREATE TABLE t2(
  city VARCHAR(255),
  Id INT PRIMARY KEY,
  remark VARCHAR(255),
  email VARCHAR(255)
);
-- @block insert 5 rows of data into table t1
INSERT INTO t1(name, Id, sem, phone)
VALUES ('John', 123, 1, 1234567890),
  ('Jane', 124, 2, 1234567890),
  ('Joe', 128, 3, 1234567890),
  ('Jack', 139, 2, 1234567890),
  ('Jill', 148, 3, 1234567890);
-- @block insert 5 rows of data into table t2
INSERT INTO t2(city, Id, remark, email)
VALUES ('Kanpur', 123, 'Good', 'john@email.com'),
  ('Delhi', 124, 'can do better', 'jane@email.com'),
  ('Mumbai', 128, 'okay', 'joe@email.com'),
  ('Pune', 139, 'bad', 'jack@email.com'),
  ('Jaipur', 148, 'very good', 'jill@email.com');
-- @block apply inner join to table t1 and t2
SELECT t1.name,
  t1.Id,
  t1.sem,
  t1.phone,
  t2.city,
  t2.remark,
  t2.email
FROM t1
  INNER JOIN t2 ON t1.id = t2.id;


-- output
-- "name","Id","sem","phone","city","remark","email"
-- "John",123,1,1234567890,"Kanpur","Good","john@email.com"
-- "Jane",124,2,1234567890,"Delhi","can do better","jane@email.com"
-- "Joe",128,3,1234567890,"Mumbai","okay","joe@email.com"
-- "Jack",139,2,1234567890,"Pune","bad","jack@email.com"
-- "Jill",148,3,1234567890,"Jaipur","very good","jill@email.com"
