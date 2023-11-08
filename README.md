# sql_practice

### practice problems of SQL in this repo.

1. create a database of name company and create a table of name employee with the following attributes:
    | employee    |
    |-------------|
    | slno        |
    | name        |
    | Employee_id |
    | email       |
    | phone_No    |

2. Create a database of student. Create Tables with name t1 and t2 with following fields:

    | T1        | T2        |
    |-----------|-----------|
    | name      | city      |
    | ID        | ID        |
    | Sem       | remarks   |
    | Phone_No  | email     |

  - apply inner join to table t1 and t2

3. Create a database of name college. Create table named student with following fields:
  
    | students   |
    |------------|
    | name       |
    | enrolment  |
    | regno      |
    | sem        |
    | subject    |

  - preform the following:
    - i. select all the records of students table
    - ii. select two columns form the table students
    - iii. select columns with where clause
    - iv. select distinct column from the table students
    - v. update column name 

1. Create a database of name employee. Create table named t1 & t2 with following fields:
    
    | t1        | t2        |
    |-----------|-----------|
    | name      | EmpNo     |
    | EmpNO     | email     |
    | salary    |           |

  * i. use ALIAS operator to join tables t1 & t2
  * ii. use LIKE operator

5. Create a database of name employee. Create table t1 int the database with following fields:
    
    | t1          |
    |-------------|
    | EmpId       |
    | first_name  |
    | last_name   |
    | Job         |
    | Join_date   |
    | exp_in_years|

  - find out first and last name of employees whose salary is greater than (some amount) except empId (x)

6. Create a database of name employee. Create tables named emp_details and department with following fields:
    
    | emp_details | department |
    |-------------|------------|
    | empNo       | deptNo     |
    | EmpName     | deptName   |
    | Job         | Location   |
    | DeptNo      |            |
    | salary      |            |

  - preform the following operations:
    - i. equi join
    - ii. non equi join
    - iii. self join
    - iv. left join
    - v. right join
    - vi. full join

7. Create a database of name Student with two tables student1 and student2 with following details:
    | student1   | student2   |
    |------------|------------|
    | ID         | ID         |
    | name       | name       |
    | email      | email      |

  - preform the following operations:
    - i. union
    - ii. union all
    - iii. intersect
    - iv. minus