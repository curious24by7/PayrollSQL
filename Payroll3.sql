use payroll_service
select * from employee_payroll

alter table employee_payroll add
Phone varchar(15),
address varchar (250),
department varchar(50)

alter table employee_payroll add
constraint DefaultDepartment_constraint default 'CS' for department

alter table employee_payroll add
constraint DefaultAddress_constraint default 'Mumbai' for address

insert into employee_payroll(name,salary,start,Gender,Phone) values
('Tom', 230000.0,'2021-05-23','M','8765468663')

sp_rename 'employee_payroll.salary' 'basic_pay'

alter table employee_payroll add
deductions float,
taxable_pay real,
net_pay real,
tax money;
select*from employee_payroll

update employee_payroll set department = 'sales' where name = 'Terisa' 

insert into employee_payroll(name,department,Gender,salary,tax,start) values
('Terisa','Marketing','F', 200000.0,100000,'2021-05-23')
