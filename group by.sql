create table emp1 (eid number(10), ename varchar(20), dept varchar(20));
insert into emp1 values(1, 'a', 'cse');
insert into emp1 values(2, 'b', 'it');
insert into emp1 values(3, 'c', 'cse');
insert into emp1 values(4, 'd', 'mech');
insert into emp1 values(5, 'e', 'cse');
insert into emp1 values(6, 'f', 'it');
insert into emp1 values(7, 'g', 'mech');
insert into emp1 values(8, 'h', 'cse');
insert into emp1 values(9, 'i', 'mech');
insert into emp1 values(10, 'j', 'it');
insert into emp1 values(11, 'k', 'civil');
select * from emp1;

///////group by/////
1.////display group of dept///////
select dept from emp1       
group by dept;

2. ////// display count of dept
select dept, count(dept) from emp1  
group by dept;

create table sales (eid number(10), product varchar(20), sales number(20));
insert into sales values (1,'a', 10000);
insert into sales values (2,'b', 45000);
insert into sales values (3,'c', 20000);
insert into sales values (5,'c', 150000);
select * from sales;


/////// display maximum sales of each product/////
select product, max(sales) from sales
group by product;

create table emp2(eid number, ename varchar(20), esal number(20),dept varchar(20));
desc emp2;
insert into emp2 values(1,'a',55000,'cse');
insert into emp2 values(2,'b',45000,'it');
insert into emp2 values(3,'c',40000,'cse');
insert into emp2 values(4,'d',50000,'mech');
insert into emp2 values(5,'e',60000,'cse');
insert into emp2 values(6,'f',75000,'it');
insert into emp2 values(7,'g',45000,'mech');
insert into emp2 values(8,'h',30000,'cse');
insert into emp2 values(9,'i',80000,'mech');
insert into emp2 values(10,'j',35000,'it');
insert into emp2 values(11,'k',65000,'civil');
insert into emp2 values(12,'l',65000,'mech');
insert into emp2 values(13,'m',65000,'mech');
select * from emp2;

//////// display group of dept and salary/////
select dept,esal from emp2
group by dept, esal;

select dept,(max(esal)) from emp2
group by dept;
################ ask below query to someone it dont work#########
select dept, count(max(esal)) from emp2    
group by dept;

select count(max(esal)) from emp2
group by dept;

///////////// display duplicate value////////////
select dept from emp2
group by dept
having count(dept)>1;

select dept, count(dept) from emp2
group by dept
having count(dept)>1;
-------------------------------------------------------------------------------------------------
create table emp3(eid number(10), ename varchar(20), esal number(10), dept varchar(20) );
insert into emp3 values(1,'A', 50000, 'cse');
insert into emp3 values(2,'B', 65000, 'mech');
insert into emp3 values(3,'c', 40000, 'cse');
insert into emp3 values(4,'d', 45000, 'it');
insert into emp3 values(5,'e', 80000, 'it');
insert into emp3 values(6,'f', 75000, 'cse');
insert into emp3 values(7,'g', 65000, 'mech');
insert into emp3 values(8,'h', 60000, 'cse');
insert into emp3 values(9,'i', 55000, 'it');
insert into emp3 values(10,'j', 90000, 'mech');
insert into emp3 values(11,'k', 70000, 'mech');
insert into emp3 values(12,'l', 80000, 'civil');
------------------------------------------
select * from emp3
order by esal ;
---------------------------------
select dept from emp3
where esal>50000
group by dept
having count(dept)>1
order by dept desc;
----------------------------
select dept, count(dept) from emp3
where esal>50000
group by dept
having count(dept)>1
order by dept desc;

