

create table departments(d_code varchar(10) primary key, d_name varchar(100),
d_budget number(20), d_role varchar(100));

insert into departments values ('SM', 'Sales and Marketing', 900000, 'selling and marketing services and products');
insert into departments values ('HR', 'Human Resource', 500000,'managing resources from all departments');
insert into departments values ('LD', 'Learning and Development', 600000,'dealing with trainings and new learning trends');
insert into departments values ('WD', 'Web Development', 500000, 'Developing Web applications with different technologies');
insert into departments values ('RST', 'Research and Testing', 1500000, 'Researching new algorithms and testing them for variaous technologies');

create table employees (employees_id number(5) primary key, 
first_name varchar2(20), 
last_name varchar2(20), 
city varchar2(20), 
age number(4), salary number(7), commission number(7), dept_code varchar(10) references departments(d_code));  


insert into employees values(111,'Kishor' ,'Pawar', 'Mumbai', 56, 80000, 2000,'WD');
insert into employees values(121,'Kamal' ,'Chopra', null, 40,70000,null,'HR');
insert into employees values(112,'Rupa' ,'Wagh', 'Pune', 56,75000,5000,'WD');
insert into employees values(131,'karuna' ,'Trivedi', 'Solapur', 46,65000,3000,'LD');
insert into employees values(115,'rupali' ,'Patil', 'pune', 45,75000,null,'SM');
insert into employees values(114,'Kaival' ,'triveni', 'Delhi', 40,60000,2000,'SM');
insert into employees values(101,'Kishor' ,'Pawar', 'Solapur', 44,65000,2000,'HR');
insert into employees values(155,'Yash' ,'Chopra', 'Delhi', 40,73000,null,'LD');
insert into employees values(255,'Pavan' ,'Kumar', 'Mumbai', 40,70000,4000,'LD');
insert into employees values(102,'Sonu' ,'Chaturvedi', 'Kolkata', 46,80000,5000,'WD');
insert into employees values(109,'Amar' ,'Jadhav', 'PUNE', 43,95000,4000,'WD');
insert into employees values(110,'Amit' ,'Jagdale', 'Delhi', 44,92000,5000,'HR');
insert into employees values(555,'Hari','Kumar','pune',50,92000,2000,'HR');
insert into employees values (333,'Kish', 'Kumar' ,'Pune',58,75000,null,'SM');
insert into employees values (323,'Kishori' ,'Kumar' ,'Mumbai',59,92000,null,'SM');
insert into employees values (132,'Manohar' ,'Trivedi' ,'Delhi',59,50000,2000,'LD');
insert into employees values (122,'Ishwari' ,'Trivedi' ,'Delhi',59,50000,4000,'LD');

insert into employees(employees_id,first_name,age,salary,dept_code) values (242,'Poonam',59,80000,'WD');
insert into employees values(224,'Anu','Chopra','Kolhapur',58,85000,3000,'SM');
insert into employees values(225,'A','Kapoor','Kolhapur',59,87000,3000,'HR');
insert into employees values (301, 'Raja','Vani','Satara',40,60000,4000,'SM');
insert into employees(employees_id,first_name,age,salary,dept_code) values(105,'Ravi',60,80000,'WD');
insert into employees values (344,'   Kishor',' Kishor  ','   Satara ',66,98000,4000,'HR');   
insert into employees values(182,'Gauresh','Patil','Delhi',56,48000,null,'SM');
insert into employees values(677,'Veena','Patil','Mumbai',66,90000,6000,'LD');
insert into employees values(878,'Soham','Rajput','Mumbai',34,45000,1000,null);
insert into employees values(989,'Mohan','Rajput','Pune',44,50000,1000,null);
insert into employees values(999,'Veena','Bhagat','Satara',40,49000,1000,null);

update employees set commission=4000 where employees_id=121

create table students(std_id number(8) primary key, ph_marks number(5), ch_marks number(5), maths_marks number(5), bio_marks number(5));

insert into students values (222,78,90,67,89);
insert into students values (223,88,92,98,82);
insert into students values (224,85,88,78,91);
insert into students values (225,70,75,86,70);
insert into students values (226,72,80,84,73);
insert into students values (227,98,95,77,85);
