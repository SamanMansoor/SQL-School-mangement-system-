Create Database Customer;
use Customer;
Create table Customer(
Customer_id int primary key,
Cust_Name varchar(30),
City varchar(25),
SalesMan_NO varchar(20),
Oder_Date Date
);
INSERT INTO customer(Customer_id,Cust_Name,City,SalesMan_NO,Oder_Date) Values(1002,'Shahid','New York','3001','2012-10-05'),
(1005,'Imran','California','3011','2012-09-10'),
(1007,'Nofil','London','3007','2012-10-05'),(1008,'Ahmad Sheikh','Paris','3010','2012-08-17'),(1009, 'Imran Quershi', 'Berlin','3011', '2012-09-10'),
(1010,'Jozy Altidor','Moscow','3020','2012-07-27'),(1011, 'Brad Guzan','London','3021','2012-04-25');


DELETE fROM customer where City='Moscow';
