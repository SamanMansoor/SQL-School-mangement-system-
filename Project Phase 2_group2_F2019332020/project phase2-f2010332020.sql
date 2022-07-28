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


create table exams(
exams_Room int primary key,
exams_Name varchar (30),
student_id int,
FOREIGN KEY(student_id) REFERENCES student(student_id)
);

insert into exams values(101,'Englsih','1'),
(102,'Urdu','2'),(103,'Math','3'),
(104,'Science','4'),(105,'Islamiyat','5'),
(106,'physics','6'),(107,'Chemistry','7'),
(108,'Bio','8'),(109,'Pak_study','9'),
(110,'Arabics','10');
select * from exams;



create table school(
School_code varchar(30) primary key,
School_Name varchar(30),
Branch_Name varchar(30),
Address varchar(30),
City varchar(30),	
Phone_number varchar(30),
student_id int,
FOREIGN KEY(student_id) REFERENCES student(student_id),
FOREIGN KEY(student_id) REFERENCES student(student_id)
);

insert into school values('A111','Punjab school','johor town','1C1','Lahore','+92345678930','1'),
('A112','Punjab school','Johor studentstudentschooltown','1C2','Lahore','+92345677309','2'),
('A113','Punjab school','PIA', '2C55', 'Lahore','+92098875322','3'),
('A114','Punjab school','MODEL Town' ,'FJ block','Lahore','+9203564646','4'),
('A115','Punjab school','Gulberg','M block','Lahore' ,'04242450259','5'),
('A116','Punjab school','Muslim town','C2 block','Lahore','+9234567730','6'),
('A118','Punjab school','PIA', '2j55', 'Lahore','+9200988753','7'),
('A119','Punjab school','MODEL Town', 'F1 block','Lahore', '+92983564646','8'),
('A120','Punjab school','Gulberg','M block', 'Lahore', '04242450259' ,'9'),
('A121','Punjab school','johor town','1M1','Lahore','+92345678930','10');

select * from school;

create table library (
Book_ID	int primary key,
Book_tittle varchar(30) not NULL,
Author_Id varchar(30) NOT NULL,
Book_Author varchar(30) NOT NULL,
Publish date,
Isbn varchar(30) NOT NULL,
School_code varchar(30),
FOREIGN KEY(School_code) REFERENCES School(School_code)
);
insert into library values (23,'Smart Money Smart Kids', '1','Dave Ramsey','014-04-29 00:00:00','124578','A111');
insert into library values(36,'Smart Money Kids',	'2','Rachel Cruz','2020-04-19 00:00:00','354688','A112');
insert into library values(37,'Smart Kids',	'3','Cruz','2010-04-19 00:00:00','314688','A113');
insert into library values(38,'Smart life',	'4','Rachel Charless','2018-03-9 00:00:00','354288','A114');
insert into library values(39,'Smart Girl',	'5','Racal Cruz','2011-01-29 00:00:00','354682','A115');
insert into library values(40,'Kids life',	'6','Manan','2017-04-9 00:00:00','354688','A116');
insert into library values(42,'Cloud',	     '8','Yayat','2014-10-17 00:00:00','1344688','A118');
insert into library values(43,'Kids life',	'9','Rachel Cruz','2020-04-19 00:00:00','354688','A119');
insert into library values(44,'SAFE life',	'10','Cruz','2016-12-3 00:00:00','354658','A120');
insert into library values(45,'mountain life',	'11','Cruz','2017-12-13 00:00:00','354658','A121');
select *from library;

Create table Author_details(
Book_ID_author int primary key,
Author_Id varchar(30),
Book_Author varchar(30),
Book_ID int,
foreign key (Book_id) references  library(book_id)
);

insert into Author_details values (20	,'1','Dave Ramsey' , '23'),(21,'2','Rachel Cruz','36'),
(22,'3','Cruz','37'),(23,'4','Rachel Charless','38'),(24,'5','Racal Cruz','39');
insert into Author_details values(25,'6','Manan','40');
insert into Author_details values(26,'8','Yayat','40');
insert into Author_details values(28,'10','Cruz','42');
insert into Author_details values(29,'11','Cruz','43');
insert into Author_details values(30,'9','Rachel Cruz','44');
select *from Author_details;


create table Admin(
Admin_ID int primary key,
Admin_First_Name varchar (30),
Admin_Last_Name varchar(30),
City varchar(30),
student_id int,
FOREIGN KEY(student_id) REFERENCES student(student_id)
);

insert into Admin values (1	,'Ahmad','Asif','Karachi','1'),
(2,'Maha','Jawad','Lahore','2'),
(3,'Ali','Awais','Islamabad','3'),
(4,'sajid','Ali','Lahore','4'),
(5,'sidra','Mansoor','Gujrat','5'),
(6,'Ashraf','khan','islamabad','6'),
(7,'bilal','butt','Lahore','7'),
(8,'yasir','Malik','faslabad','8'),
(9,'Mahab','Ali','Lahore','9'),
(10,'Mahreen','Ali','Lahore','10');

select * from Admin;
 
Create table Teacher(
Teacher_ID int primary key,
Teacher_First_Name varchar(30),
Teacher_last_Name varchar(30),
City varchar(30),
Admin_ID int,
FOREIGN KEY(Admin_ID) REFERENCES Admin(Admin_ID)
);

Insert into Teacher values(11,'Asif','Ahmad','Karachi','1'),
(12,'Jawad','Maha','Lahore','2'),
(13,'Ali','Awais','Islamabad','3'),
(14,'sajid','Ali','Lahore','4'),
(15,'sidra','Ali','Gujrat','5'),
(16,'zara','khan','islamabad','6'),
(17,'bilal','Abbas','Lahore','7'),
(18,'Tayyaba','Malik','faslabad','8'),
(19,'Abdulllah','Khan','Lahore','9'),
(20,'Mahreen','Ali','Lahore','10');
select * from teacher;

Create table courses(
Course_Code int primary key,
course_Name varchar(30),
Admin_ID int,
FOREIGN KEY(Admin_ID) REFERENCES Admin(Admin_ID)
);

insert into courses values(101,'Math','1'),
(102,'English',2),(103,'urdu','3'),(104,'science','4'),
(105,'computer','5'),(106,'Bio','6'),(107,'physics','7'),(108,'chemistry','8'),
(109,'Arabic','9'),(110,'Islamiyat','10');
select * from courses;


create table Classes(
Class_no int primary key,
Class_Name varchar(30),
Class_Teacher_Name varchar(30),
Teacher_id int,
FOREIGN KEY(Teacher_id) REFERENCES Teacher(Teacher_id),
FOREIGN KEY(Teacher_id) REFERENCES Teacher(Teacher_id)
);
insert into classes values (1,'sst','Asif','11');
insert into classes values(2,'SSH','Jawad','12'),
(3,'SSH','Ali','13'),
(4,'SBH','sajid','14'),
(5,'SL','Ali','15'),
(6,'SS','zara','16'),
(7,'SST','bilal','17'),
(8,'SHS','Tayyaba','18'),
(9,'SMS','Abdulllah','19'),
(20,'SST','Mahreen','20');

Select * from classes;


create table Teacher_Details(
Class_Name varchar (30),
Class_Teacher_Name varchar(30),
Class_no int,
FOREIGN KEY(Class_no) REFERENCES  classes(Class_no)
);

insert into Teacher_Details values ('sst','Asif','1'),('SSH','Jawad','2');
insert into Teacher_Details values ('SSH','Ali','3'),
('SBH','sajid','4');
insert into Teacher_Details values ('SL','Ali','5'),
('SS','zara','6');
insert into Teacher_Details values ('SST','bilal','7'),
('SHS','Tayyaba','8');
insert into Teacher_Details values ('SMS','Abdulllah','9');
insert into Teacher_Details values('SB','Saad','20');


select * from Teacher_Details;
