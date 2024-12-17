
create database oct28th;

use oct28th;

create table employee(empid int(10),empname varchar(20),empsal decimal(4,2));

describe employee;
describe emp;



alter table employee add column empadd varchar(20);
alter table employee rename column empid to id;
alter table employee modify column empadd varchar(50);
alter table employee drop column empsal;

rename table employee to emp;

drop table emp;




insert into employee values(145,'sathya',89.7);

insert into employee values
(123,'keerthi',90.7),
(322,'suresh',80.9),
(654,'soma',17.8),
(185,'prakash',16.5);


select empid from employee;
select empid,empname from employee;
select empid,empname,empsal from employee;
select * from employee;


update employee set empname='mahesh' where empid=654;

delete from employee where empid=185;


set autocommit=0;
insert into employee values
(100,'tarun',10.7),
(101,'divya',20.9);
commit;

select * from employee;

rollback;

delete from employee where empid=100;

truncate table employee;

create user world_nar;

create user 'nar' identified by 'nar123' default role 'world_nar';

grant insert,update,select,delete on oct28th.*  to 'world_nar';

revoke insert,update,select,delete on oct28th.* from 'world_nar';


create table test(tis int,tname varchar(10),tdate date,ttime time,tdt datetime);

describe test;


insert into test values
(1,'java',current_date(),current_time(),now()),
(3,'python',current_date()+1,current_time(),now()),
(4,'js',current_date()-1,current_time(),now()),
(1,'java',current_date(),current_time(),now());

select * from test;


create table emp(eid int not null,ename varchar(20) unique,esal int);

insert into emp values(127,'soma',5000);

insert into emp(ename,esal) values('keerthi',9000);
insert into emp values(678,'suresh',19000);

alter table emp add constraint check(esal<10000);
select * from emp;


create table emp1(
eid int primary key,
ename varchar(20) not null,
esal int check(esal<20000),
eadd varchar(20) not null,
edate date);

insert into emp1 values
(123,'keerthi',18000,'hyd',current_date()),
(293,'suresh',17000,'kochi',current_date()+1);

insert into emp1 values(245,'sathya',null,'kochi',current_date()-1);

create table emp2(eid int primary key,ename varchar(20) unique,esal int default 1000);

insert into emp2(eid,ename) values(90,'soma');
insert into emp2 values(80,'udhd',8900);


create table customer(
cusid int primary key auto_increment,
fname varchar(20) not null,
lname varchar(20) not null
);

insert into customer(lname,fname) values 
('keerthi','suresh'),
('sathya','soma'),
('pushpa','mulleti');
select * from customer;

create table transaction(
transid int primary key auto_increment,
amount decimal(6,2),
cusid int,
foreign key(cusid) references customer(cusid)
);

insert into transaction(amount,cusid) values
(34.7,1),
(267.90,3),
(19.7,2),
(93.8,3),
(16.90,2),
(64.63,1);

select * from transaction;

show tables;

drop table emp;












