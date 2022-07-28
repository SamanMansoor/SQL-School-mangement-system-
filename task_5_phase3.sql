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

-- Make 5 SQL query questions from the following topics:
-- a. Views
-- b. Write SQL query answers for 5 questions.
create view student_details as select city from student;

create or replace  view student_detail as select city,address from student;

rename table  student_detail to stud_details;

alter view stud_details as select city,address from student order by city desc;

select * from stud_details;
alter view stud_details as select city,address from student where city like 'L%';  
alter view stud_details as select city,address from student group by city;