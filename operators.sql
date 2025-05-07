create table employee(eid number primary key, ename varchar(20),esal number(10),incentive_amt number(20));
insert into employee values(1, 'rupali',100000, 10000 );
insert into employee values(2, 'sachin',80000, 1200 );
insert into employee values(3, 'deepali',21000, 1000 );
insert into employee values(4, 'shruti',55000, 5000 );
insert into employee values(5, 'sneha',65000, 600 );
select * from employee;

******** arithmatic operators ************
////// add/substract esal and incentive_amt//////
select (esal+incentive_amt) from employee;
select (esal-incentive_amt) from employee;

///// alise of above syntax ////////
select (esal+incentive_amt) as total_sal from employee;
select eid, ename, (esal+incentive_amt) as total_sal from employee; 

/////   note= esal+-incentive_amt without adding bracket also give same output   ////////

/////////// multiplication and division  ////////////
select (esal*incentive_amt) from employee;
select (esal/incentive_amt) from employee;

***********  comparison operators  ***********
select * from employee
where esal = 50000;
select * from employee
where esal >= 50000;
select * from employee
where esal != 55000;
select * from employee
where esal between 65000 and 80000;
select * from employee
where esal not between 65000 and 80000;
select * from employee
where esal in (65000, 80000);
select * from employee
where esal not in (65000, 80000);

********** logical operators *************
select * from employee
where esal = 65000 and ename='sneha';
select * from employee
where esal = 55000 or ename='sneha';
select * from employee
where not (esal = 65000 );
select * from employee
where not (esal = 65000 and ename='sneha');

********* concatenation operator ***********
create table customer (cid number, fname varchar(20), lname varchar(20), city varchar(10));
insert into customer values(1, 'amit', 'patil','pune');
insert into customer values(2, 'abhijit', 'chavhan','mumbai');
insert into customer values(3, 'santosh', 'more','delhi');
insert into customer values(4, 'jayraj', 'yadhav','katraj');
insert into customer values(5, 'vishwa', 'nanawade','bharti');
insert into customer values(6, 'shivani', 'jadhav','solapur');
insert into customer values(7, 'ashish', 'patil','nanded');
select * from customer;

select fname||lname  from customer;
select fname||' '||lname from customer;
select fname||' '||lname as full_name from customer;

************ like operator********
select * from customer
where fname like 'a%';
select * from customer
where fname like '%j';
select * from customer
where fname like '_a%';
select * from customer
where fname like '%n_';
select * from customer
where fname like '__h%';
select * from customer
where fname like '____';