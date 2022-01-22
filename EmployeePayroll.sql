--create database Payroll_Services --UC1

--create table EmployeePayroll(EmpId int IDENTITY, EmpName varchar(max),Salary money,StartDate DateTime) --UC2

SET IDENTITY_INSERT
 EmployeePayroll ON

 insert into
EmployeePayroll(EmpId,EmpName,Salary,StartDate) --UC3
values(113, 'Rohit',30000,'2019-7-17')
insert into
 EmployeePayroll(EmpId,EmpName,Salary,StartDate)
 values(117, 'Sam',35000,'2018-12-11')
insert into
 EmployeePayroll(EmpId,EmpName,Salary,StartDate)
 values(119, 'Rahul',19000,'2018-10-15') 
 insert into
 EmployeePayroll(EmpId,EmpName,Salary,StartDate)
 values(121, 'Karn',39000,'2021-11-25')
insert into
 EmployeePayroll(EmpId,EmpName,Salary,StartDate)
 values(137, 'Cris',10000,'2019-12-12')
 insert into
 EmployeePayroll(EmpId,EmpName,Salary,StartDate)
 values(139, 'Abhinav',100000,'2019-12-9')

 select * from EmployeePayroll --UC4

  Select salary from EmployeePayroll where EmpName = 'Rahul' --UC5

  
 select * from EmployeePayroll 
 where start BETWEEN CAST('2018-09-05 AS DATE') AND (NOW()); --UC5

 ALTER TABLE EmployeePayroll  --UC6
 ADD Gender varchar;

 UPDATE [EmployeePayroll] SET Gender = 'M' WHERE EmpName = 'Rahul';
UPDATE [EmployeePayroll] SET Gender = 'M' WHERE EmpName = 'Rohit';
UPDATE [EmployeePayroll] SET Gender = 'M' WHERE EmpName =  'Sam';
UPDATE [EmployeePayroll] SET Gender = 'M' WHERE EmpName = 'Karn'; 
UPDATE [EmployeePayroll] SET Gender = 'F' WHERE EmpName = 'Cris';
UPDATE [EmployeePayroll] SET Gender = 'M' WHERE EmpName = 'Abhinav';
