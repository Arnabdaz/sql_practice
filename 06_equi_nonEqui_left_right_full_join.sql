-- @block create database employee
CREATE DATABASE employee;
-- @block use database employee
USE employee;

-- @block create table emp_details
CREATE TABLE emp_details(
  EmpNo INT PRIMARY KEY,
  EmpName VARCHAR(255),
  job VARCHAR(30),
  DeptNo INT,
  salary INT
);

-- @block create table department
CREATE TABLE department(
  DeptNo INT PRIMARY KEY,
  DeptName VARCHAR(30),
  Loc VARCHAR(30)
);

-- @block insert data into table emp_details
INSERT INTO emp_details(EmpNo, EmpName, job, DeptNo, salary)
VALUES(1, 'Jane', 'DEVELOPER', 3, 70000),
  (2, 'Jill', 'DEVOPS', 4, 60000),
  (3, 'Mike', 'DEVELOPER', 3, 80000),
  (4, 'Jack', 'DEVOPS', 4, 75000);

-- @block insert data into table department
INSERT INTO department(DeptNo, DeptName, Loc)
VALUES(1, 'CEO', 'New York'),
  (2, 'DEVREL', 'London'),
  (3, 'DEVELOPER', 'San Francisco'),
  (4, 'DEVOPS', 'Bangalore');

-- @block equi join:
SELECT e.EmpNo,
  e.EmpName,
  e.job,
  e.DeptNo,
  e.salary,
  d.DeptName,
  d.Loc
FROM emp_details AS e,
  department AS d
WHERE e.DeptNo = d.DeptNo;

-- output
-- "EmpNo","EmpName","job","DeptNo","salary","DeptName","Loc"
-- 1,"Jane","DEVELOPER",3,70000,"DEVELOPER","San Francisco"
-- 2,"Jill","DEVOPS",4,60000,"DEVOPS","Bangalore"
-- 3,"Mike","DEVELOPER",3,80000,"DEVELOPER","San Francisco"
-- 4,"Jack","DEVOPS",4,75000,"DEVOPS","Bangalore"

-- @block non equi join:
SELECT e.EmpNo,
  e.EmpName,
  e.job,
  e.DeptNo,
  e.salary,
  d.DeptName,
  d.Loc
FROM emp_details AS e,
  department AS d
WHERE e.DeptNo != d.DeptNo;

-- output
-- "EmpNo","EmpName","job","DeptNo","salary","DeptName","Loc"
-- 4,"Jack","DEVOPS",4,75000,"CEO","New York"
-- 3,"Mike","DEVELOPER",3,80000,"CEO","New York"
-- 2,"Jill","DEVOPS",4,60000,"CEO","New York"
-- 1,"Jane","DEVELOPER",3,70000,"CEO","New York"
-- 4,"Jack","DEVOPS",4,75000,"DEVREL","London"
-- 3,"Mike","DEVELOPER",3,80000,"DEVREL","London"
-- 2,"Jill","DEVOPS",4,60000,"DEVREL","London"
-- 1,"Jane","DEVELOPER",3,70000,"DEVREL","London"
-- 4,"Jack","DEVOPS",4,75000,"DEVELOPER","San Francisco"
-- 2,"Jill","DEVOPS",4,60000,"DEVELOPER","San Francisco"
-- 3,"Mike","DEVELOPER",3,80000,"DEVOPS","Bangalore"
-- 1,"Jane","DEVELOPER",3,70000,"DEVOPS","Bangalore"

-- @block self join:
SELECT DISTINCT job
FROM emp_details,
  department
WHERE emp_details.DeptNo = department.DeptNo;

-- output
-- "job"
-- "DEVELOPER"
-- "DEVOPS"

-- @block left join:
SELECT e.EmpNo,
  e.EmpName,
  e.job,
  e.DeptNo,
  e.salary,
  d.DeptName,
  d.Loc
FROM emp_details AS e
  LEFT JOIN department as d ON e.DeptNo = d.DeptNo;

-- output:
-- "EmpNo","EmpName","job","DeptNo","salary","DeptName","Loc"
-- 1,"Jane","DEVELOPER",3,70000,"DEVELOPER","San Francisco"
-- 2,"Jill","DEVOPS",4,60000,"DEVOPS","Bangalore"
-- 3,"Mike","DEVELOPER",3,80000,"DEVELOPER","San Francisco"
-- 4,"Jack","DEVOPS",4,75000,"DEVOPS","Bangalore"

-- @block right join:
SELECT e.EmpNo,
  e.EmpName,
  e.job,
  d.DeptNo,
  e.salary,
  d.DeptName,
  d.Loc
FROM emp_details AS e
  RIGHT JOIN department as d ON e.DeptNo = d.DeptNo;

-- output:
-- "EmpNo","EmpName","job","DeptNo","salary","DeptName","Loc"
-- "","","",1,"","CEO","New York"
-- "","","",2,"","DEVREL","London"
-- 3,"Mike","DEVELOPER",3,80000,"DEVELOPER","San Francisco"
-- 1,"Jane","DEVELOPER",3,70000,"DEVELOPER","San Francisco"
-- 4,"Jack","DEVOPS",4,75000,"DEVOPS","Bangalore"
-- 2,"Jill","DEVOPS",4,60000,"DEVOPS","Bangalore"

-- @block full join:
SELECT e.EmpNo,
  e.EmpName,
  d.DeptNo,
  e.job,
  e.salary,
  d.DeptName,
  d.Loc
FROM emp_details AS e
  FULL JOIN department AS d ON e.DeptNo = d.DeptNo;

-- output:
-- "EmpNo","EmpName","job","DeptNo","salary","DeptName","Loc"
-- 1,"Jane","DEVELOPER",3,70000,"DEVELOPER","San Francisco"
-- 2,"Jill","DEVOPS",4,60000,"DEVOPS","Bangalore"
-- 3,"Mike","DEVELOPER",3,80000,"DEVELOPER","San Francisco"
-- 4,"Jack","DEVOPS",4,75000,"DEVOPS","Bangalore"
-- "","","",1,"","CEO","New York"
-- "","","",2,"","DEVREL","London"