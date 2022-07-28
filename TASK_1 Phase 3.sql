create database school;
use school;

create table student(
student_id int primary key,
stud_First_Name varchar(50),
stud_Last_Name varchar(50),
city varchar(50),
address varchar(50)
);

insert into student values(1,'Aliza','Ahmad','Lahore','1c1 johor town'), 
(2,'Maria','Jawad','Karachi','1c3'), 
(3,'Raffia', 'Asif','Islamabad','E block'),
(4,'Mahad','khan','Faslabad','M block'),
(5,'Maha','jutt','Gujrat','c cant area'),
(6,'Ayesha','butt', 'lahore', 'B_block Model town'),
(7,'Maheen','ALI','Rwalpindi','Cant area'),
(8,'Ahad', 'Rahman', 'Lahore', 'township'),
(9,'Abdullah','khan' , 'karachi','12c1'),
(10,'hifsa','Mansoor', 'lahore', '1c1 johor town');

select*from  student;

-- Make 7 SQL query questions in which the following operators should be
-- used:
-- a. AND, OR, NOT, IN, NOT IN, BETWEEN & LIKE operator.
-- b. Write SQL queries answers of 7 SQL query questions.



-- AND OPERATOR 
SELECT * FROM student
WHERE stud_First_Name = 'Ayesha' AND City = 'Lahore';

-- OR OPERATOR
SELECT * FROM student
WHERE stud_First_Name = 'Ayesha' OR City = 'Lahore'  OR city='Karachi';

-- NOT OPERATOR 
SELECT * FROM student
WHERE NOT Address = '1c1 johor town';

-- NOT IN OPERATOR
SELECT * FROM student
WHERE City NOT IN ('Lahore', 'Islamabad', 'karachi');

-- Like OPERATOR
SELECT * FROM student
WHERE stud_last_Name LIKE 'a%';

-- IN OPERATOR
SELECT * FROM student
WHERE  student_id   IN ('8', '5', '10');

-- between operator 
SELECT * FROM student
WHERE student_id BETWEEN 4 AND 10;
