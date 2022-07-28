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


create table Parent(
Parent_id int primary key,
First_Name varchar(50),
Last_Name varchar(50),
city varchar(50),
address varchar(50),
student_id int,
FOREIGN KEY(student_id) REFERENCES student(student_id)
);


insert into Parent values(1,'Ahmad','Ali','Lahore','1c1 johor town','1');
insert into Parent values(2,'Raffia','Jawad','Karachi','1c3','2');
insert into Parent values(3,'Maria', 'Asif','Islamabad','E block','3'),
(4,'kamran','khan','Lahore','M block','4'),
(5,'Mahaab','jutt','Gujrat','c cant area','5'),
(6,'Aliza','Farooq', 'lahore', 'B_block fasil town','6'),
(7,'ALI','khan','Rwalpindi','Cant area','7'),
(8,'saif', 'Rahman', 'Lahore', 'C1,township','8'),
(9,'Abdul-Rahman','khan' , 'karachi','12c1','9'),
(10,'Mansoor','Ali', 'lahore', '1c1 johor town','10');
select * from parent;



-- Make 7 SQL query questions in which SQL Joins should be used. Write SQL
-- query answers for each SQL Join question.

-- Equi Join
SELECT stud_First_Name,First_Name
FROM Parent, student
WHERE Parent.Parent_id=student.student_id;

-- Natural Join
SELECT Parent_id, address
FROM parent NATURAL JOIN student;

-- Conditional JOIN 
SELECT stud_First_Name,First_Name,Parent.city
FROM Parent, student
WHERE Parent.Parent_id=student.student_id and Parent.city='karachi' ;

-- cross join
select * from  student cross join school;

-- inner join
SELECT stud_First_Name,First_Name
FROM Parent inner join student ON Parent.Parent_id=student.student_id;


-- Left join
SELECT S.City as 'student_city',S.stud_First_Name,P.city as 'parent_city',P.First_Name as'Parent_Name'
FROM Parent P Left join student S ON P.Parent_id=S.student_id;


-- Right Join
SELECT S.City as 'student_city',S.stud_First_Name,P.city as 'parent_city',P.First_Name as'Parent_Name'
FROM Parent P Right join student S ON P.Parent_id=S.student_id;
