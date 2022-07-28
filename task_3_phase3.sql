create database school;
use school;
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

-- 3. Make 7 SQL query questions in which the following topics should be used:
-- a. Distinct statement, Group by statement, Having clause & Order by statement
-- b. Write SQL query answers for 7 questions.

-- ORDER BY
SELECT * FROM admin
ORDER BY City;

select Admin_ID , Admin_First_Name from admin order by  Admin_ID Desc;
select Admin_ID , Admin_First_Name from admin order by  Admin_ID Asc;
-- distinct
SELECT Distinct  Admin_First_Name  FROM admin;

-- group by 
select  Admin_ID  , Admin_First_Name from admin group by city;

-- having clause
SELECT COUNT(Admin_ID), City
FROM admin
GROUP BY city
HAVING COUNT(Admin_ID);

SELECT max(Admin_ID)
FROM admin HAVING max(Admin_ID);
