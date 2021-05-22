create database payroll_service

select * from sys.databases;

use payroll_service

select DB_NAME();

create table employee_payroll
(
 id int identity(1,1) primary key,
 name varchar(100) not null,
 salary money not null,
 start date not null
);

select * from employee_payroll;

insert into employee_payroll values
('Billi',100000.0,'2018-01-03'),
('Terisa',200000.0,'2019-11-13'),
('Charlie',300000.0,'2021-05-21')

select * from employee_payroll;

insert into employee_payroll(salary,name,start) values
(100000.0,'Mark','2017-01-03')

select salary from employee_payroll where name = 'billi'

ALTER TABLE employee_payroll
ADD Gender char(2)

update employee_payroll set Gender = 'M' where name = 'Billi' or name = 'Charlie'or name = 'Mark';
update employee_payroll set Gender = 'F' where name = 'Terisa';

select sum(salary) from employee_payroll where gender = 'M' group by Gender;
select avg(salary) from employee_payroll where gender = 'M' group by Gender;
select min(salary) from employee_payroll where gender = 'M' group by Gender;
select max(salary) from employee_payroll where gender = 'M' group by Gender;
select count(salary) from employee_payroll where gender = 'M' group by Gender;
select count(salary) from employee_payroll where gender = 'F' group by Gender;