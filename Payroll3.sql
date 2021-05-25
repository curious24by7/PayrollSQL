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

update employee_payroll set deductions=1500, taxable_pay=0, net_pay=50000, tax=50000, department= 'marketing', Phone = 7895646531, address = '1652 passion street' where name = 'Billi';
update employee_payroll set deductions=1500, taxable_pay=0, net_pay=50000, tax=60000, department= 'sales', Phone = 7895315531, address = '1652 Grand Walk street' where name = 'Terisa';
update employee_payroll set deductions=1600, taxable_pay=0, net_pay=60000, tax=50000, department= 'marketing', Phone = 7895646353, address = '1652 passion street' where name = 'Charlie';
update employee_payroll set deductions=1500, taxable_pay=0, net_pay=50000, tax=80000, department= 'production', Phone = 6584653213, address = '3576  Edington Drive' where id = 4;
update employee_payroll set deductions=1400, taxable_pay=0, net_pay=20000, tax=50000, department= 'marketing', Phone = 9875132842, address = '1924  Tecumsah Lane' where id = 5;
update employee_payroll set deductions=1500, taxable_pay=0, net_pay=80000, tax=20000, department= 'sales', Phone = 3264984653, address = '3293  Monroe Street' where id = 6;
update employee_payroll set deductions=2500, taxable_pay=0, net_pay=30000, tax=40000, department= 'HR', Phone = 6131846313, address = '2057  Spadafore Drive' where name = 'Tom';
update employee_payroll set deductions=1500, taxable_pay=0, net_pay=30000, tax=70000, department= 'quality', Phone = 5913564986, address = '153  Clarksburg Park Road' where name = 'Terisa';
update employee_payroll set deductions=1800, taxable_pay=0, net_pay=70000, tax=50000, department= 'technical', Phone = 3213214986, address = '207  Alpaca Way' where name = 'Mohan';
select*from employee_payroll