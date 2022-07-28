create database school;
use school;

Create table Teacher(
Teacher_ID int primary key,
Teacher_First_Name varchar(30),
Teacher_last_Name varchar(30),
City varchar(30)
);

Insert into Teacher values(11,'Asif','Ahmad','Karachi'),
(12,'Jawad','Maha','Lahore'),
(13,'Ali','Awais','Islamabad'),
(14,'sajid','Ali','Lahore'),
(15,'sidra','Ali','Gujrat'),
(16,'zara','khan','islamabad'),
(17,'bilal','Abbas','Lahore'),
(18,'Tayyaba','Malik','faslabad'),
(19,'Abdulllah','Khan','Lahore'),
(20,'Mahreen','Ali','Lahore');
select * from teacher;

create table Admin(
Admin_ID int primary key,
Admin_First_Name varchar (30),
Admin_Last_Name varchar(30),
City varchar(30)
);

insert into Admin values (1	,'Ahmad','Asif','Karachi'), 
(2,'Maha','Jawad','Lahore'),
(3,'Ali','Awais','Islamabad'),
(4,'sajid','Ali','Lahore'),
(5,'sidra','Mansoor','Gujrat'),
(6,'Ashraf','khan','islamabad'),
(7,'bilal','butt','Lahore'),
(8,'yasir','Malik','faslabad'),
(9,'Mahab','Ali','Lahore'),
(10,'Mahreen','Ali','Lahore');

select * from Admin;

-- -- Make 4 SQL query questions in which Nested Queries should be used. Write
-- SQL query answers for each Nested query question.


SELECT Teacher_First_Name, Teacher_last_Name
FROM teacher
WHERE Teacher_id =
(SELECT Teacher_id
FROM teacher
WHERE Teacher_id = 20);


SELECT Admin_last_Name
FROM admin
WHERE admin_id =
(SELECT admin_id
FROM admin
WHERE admin_id = 10 );


SELECT Admin_last_Name,city FROM admin
WHERE admin_id =
(SELECT admin_id
FROM admin
WHERE admin_id = 7 );



SELECT city FROM admin WHERE admin_id =
(SELECT admin_id
FROM admin 
WHERE admin_id = 2);

SELECT city
FROM teacher
WHERE Teacher_id =
(SELECT Teacher_id
FROM teacher
WHERE Teacher_id = 11);
