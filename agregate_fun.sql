create table emp(eid int, ename varchar(20), esal float(20));
insert into emp values(1,'A', 50000);
insert into emp values(2,'B', 55000);
insert into emp values(3,'C', 30000);
insert into emp values(4,'D', 25000);
insert into emp values(5,'E', 65000);
insert into emp values(6,'F', 65000);


select * from emp;

//// display min salary /////
select min(esal) from emp;

///// dislay max salary /////
select max(esal) from emp;

////// display record of  max salary /////
select * from emp 
where esal in(select max(esal) from emp);

///// average /////
select avg(esal) from emp;

///// sum////
select sum(esal) from emp;

///// count/////////
select count(esal) from emp;

select count(*) from emp;

select distinct (esal) from emp;


select * from emp
where esal in(select distinct(esal) from emp);

select count(distinct (esal)) from emp;