
create table departments(d_code varchar(10) primary key, d_name varchar(100),
d_budget number(20), d_role varchar(100));

insert into departments values ('SM', 'Sales and Marketing', 900000, 'selling and marketing services and products');
insert into departments values ('HR', 'Human Resource', 500000,'managing resources from all departments');
insert into departments values ('LD', 'Learning and Development', 600000,'dealing with trainings and new learning trends');
insert into departments values ('WD', 'Web Development', 500000, 'Developing Web applications with different technologies');
insert into departments values ('RST', 'Research and Testing', 1500000, 'Researching new algorithms and testing them for variaous technologies');

create table neoemployees (employee_id number(5) primary key, 
first_name varchar2(20), 
last_name varchar2(20), 
city varchar2(20), 
join_date DATE,
manager_id number(5), dept_code varchar(10) references departments(d_code) on delete set null);  
insert into neoemployees values(111,'Kishor' ,'Pawar', 'Mumbai', to_date('14-JUN-2000 10:30:00','DD-MON-YYYY HH24-MI-SS'), null, 'WD');
insert into neoemployees values(121,'Kamal' ,'Chopra', 'Kolkata',to_date('1-MAY-1990 12:30:00','DD-MON-YYYY HH24-MI-SS'), null,'SM');
insert into neoemployees values(112,'Rupa' ,'Wagh', 'Pune', '12-JUN-2000', 111, 'HR');
insert into neoemployees values(131,'karuna' ,'Trivedi', 'Mumbai',to_date('14-JUN-2002 15:00:00','DD-MON-YYYY HH24-MI-SS'), 121,'LD');
insert into neoemployees values(115,'rupali' ,'Patil', 'pune',to_date('13-NOV-2002 15:30:30','DD-MON-YYYY HH24-MI-SS'), 121,'LD');
insert into neoemployees values(114,'Kaival' ,'triveni', 'Delhi',to_date('13-NOV-2002 16:15:30','DD-MON-YYYY HH24-MI-SS'),111,'WD');
insert into neoemployees values(101,'Kishor' ,'Pawar', 'Solapur',to_date('13-NOV-2002 16:15:30','DD-MON-YYYY HH24-MI-SS'),null,'SM');
insert into neoemployees values(155,'Yash' ,'Chopra', 'Delhi',to_date('11-OCT-2002 9:30:00','DD-MON-YYYY HH24-MI-SS'),null,'SM');
insert into neoemployees values(255,'Pavan' ,'Kumar', 'Mumbai',to_date('11-NOV-2000 10:30:00','DD-MON-YYYY HH24-MI-SS'),101,'HR');
insert into neoemployees values(102,'Sonu' ,'Chaturvedi', 'Kolkata',to_date('14-JUL-1990 14:00:00','DD-MON-YYYY HH24-MI-SS'),155,'WD');
insert into neoemployees values(109,'Amar' ,'Jadhav', 'PUNE', to_date('10-AUG-2003 9:30:00','DD-MON-YYYY HH24-MI-SS'),101,'WD');
insert into neoemployees values(110,'Amit' ,'Jagdale', 'Delhi',to_date('13-NOV-2002 10:30:00','DD-MON-YYYY HH24-MI-SS'),109,'HR');
insert into neoemployees values(555,'Hari','Kumar','pune',to_date('14-JUN-2000 9:00:00','DD-MON-YYYY HH24-MI-SS'),null,'HR');
insert into neoemployees values (333,'Kish', 'Kumar' ,'Pune',to_date('13-OCT-2002 13:30:00','DD-MON-YYYY HH24-MI-SS'),null,'LD');
insert into neoemployees values(545,'Lata','Jain','Satara',to_date('10-MAY-1990 11:30:00','DD-MON-YYYY HH24-MI-SS'),112,'SM');
insert into neoemployees values (323,'Kishori' ,'Kumar' ,'Mumbai',to_date('14-DEC-2001 11:30:00','DD-MON-YYYY HH24-MI-SS'),333,'LD');
insert into neoemployees values (444,'Kishori' ,'Jagri' ,'Mumbai',to_date('14-DEC-2001 9:30:00','DD-MON-YYYY HH24-MI-SS'),333,'SM');
insert into neoemployees values (888,'Ruman' ,'Soni' ,'Mumbai',to_date('25-JAN-2000 9:30:00','DD-MON-YYYY HH24-MI-SS'),333,'WD');
insert into neoemployees values(869,'Manisha' ,'Pawar', 'Pune', to_date('1-FEB-2022 10:30:00','DD-MON-YYYY HH24-MI-SS'), null,'HR');




