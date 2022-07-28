create database Employee;
use Employee;
create table employee(
employee_id int primary key,
EName varchar(30),
Designation varchar(25),
HireDate Date,
Salary varchar(35),
Comm varchar(20),
DeptNo varchar(25),
Age varchar (20)
);
INSERT INTO employee (employee_id,EName,Designation,HireDate,Salary,comm,DeptNo,Age) Values(1,'SMITH','CLERK','2010/12/17','11000','0', '20','23');
INSERT INTO employee (employee_id,EName,Designation,HireDate,Salary,comm,DeptNo,Age) Values(2,'ALLEN', 'SALESMAN', '2011/2/20','900','1000','30','22'),(3,'WARD','SALESMAN','2010/2/20','1000','1250','30','22');
INSERT INTO employee (employee_id,EName,Designation,HireDate,Salary,comm,DeptNo,Age) Values(4,'JONES','MANAGER','1990/1/5','60000','3000','32','28');
INSERT INTO employee (employee_id,EName,Designation,HireDate,Salary,comm,DeptNo,Age) Values(5,'WILLIAM','ADMIN OFFICER','2011/8/6','40000','2000','18','35'),(6,'MARTIN','SR. OFFICE ASSISTANT','1989/2/4','35000','1500','19','33');
INSERT INTO employee (employee_id,EName,Designation,HireDate,Salary,comm,DeptNo,Age) Values(7,'SCOTT','RECEPTIONIST','2012/11/11','18000','0','41','25'),
(8,'TURNER','RECEPTIONIST','2010/12/8','20000','0','41','24');
INSERT INTO employee (employee_id,EName,Designation,HireDate,Salary,comm,DeptNo,Age) Values(9,'FORD','RECEPTIONIST','2013/10/31','18000','0','41','23'),
(10,'JAMES','TYPIST','2018/11/5','7600','0','42','25'),
(11,'TURNER','PEON','0/0/0','5000','400','43','34'),
(12,'KING','ASSISTANT MANAGER','2009/8/8','47000', '0','33','37'),
(13,'BLAKE','CLERK','2015/12/19','10000','600','20','24');

SELECT employee_id from employee;

SELECT employee_id,EName from employee;
select *from employee;

select *from employee where Designation='CLERK';

SELECT EName,Salary,Comm from employee;

update employee set Designation='Admin officer', Salary= '4000' where employee_id=1;

select *from employee where DeptNo>'18';






select *from employee where HireDate!=11/11/2012;
select *from employee where Salary<=20000;
select *from employee where not Designation='SALESMAN';
