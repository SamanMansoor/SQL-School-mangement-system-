Create Database Sales;
use Sales;
Create table Sales(
SalesMan_id int primary key,
Name varchar(30),
City varchar(25),
Commission varchar(20)
);
INSERT INTO Sales(SalesMan_id,Name,City,Commission) Values('101','James Hook','New York','0.15'),(102,'Paul Hen','Paris','0.19'),(103,'Loren William','London','0.22'),(104,'Peterson Adam','Paris','0.23'),(105,'Michael Clark', 'Rome','0.12'),(108, 'Adam Gilchrest', 'San Jose','0.13');
 
 AlTER Table sales ADD First_Name varchar(20);
  
 AlTER Table sales ADD Last_Name varchar(20);
 
 AlTER table sales DROP Name;
  
select *from Sales where city ='San Jose';
AlTER Table sales Add  comm_per varchar(20) AFTER Commission; 
AlTER Table sales Add country varchar(24) AFTER City;

Select *from sales;
