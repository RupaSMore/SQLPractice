create table rup_emp(eid number(10), ename varchar(20), esal number(30),eadd varchar(20));
desc rup_emp;

insert into rup_emp values(1, 'rupa', 50000, 'kopargaon');
insert into rup_emp values(2, 'dipali', 65000, 'shirdi');
insert into rup_emp values(3, 'mayur', 75000, 'goa');
insert into rup_emp values(4, 'mayuri', 50000, 'pune');
insert into rup_emp values(5, 'sneha', 75000, 'baner');
insert into rup_emp values(6, 'pooja', 75000, 'wakad');
insert into rup_emp values(7, 'prerna', 90000, 'swargate');
insert into rup_emp values(8, 'amit', 90000, 'sbroad');
insert into rup_emp values(9, 'rahul', 60000, 'wakad');
insert into rup_emp values(10, 'pranu', 45000, 'pune');
insert into rup_emp values(11, 'sagar', 40000, 'goa');
insert into rup_emp values(12, 'pravin', 40000, 'nagar');
insert into rup_emp values(13, 'kajal', 40000, 'sinnar');
insert into rup_emp values(14, 'hema', 35000, 'nasik');
insert into rup_emp values(15, 'reena', 30000, 'niphad');

select * from rup_emp;

select eid, rowid from rup_emp;
select eid, rownum from rup_emp;
select eid, rownum from rup_emp
order by eid desc;

############ display 2nd highest salary
select max (esal) from rup_emp
where esal<(select max (esal) from rup_emp);

select min (esal) from rup_emp
where esal>(select max (esal) from rup_emp);    ........wrong query

############### display 3rd max highest salary
select max(esal) from rup_emp
where esal<(select max(esal) from rup_emp 
where esal<(select max (esal) from rup_emp));

################## display nth max salary using dense rank
select * from 
(select eid, ename, esal, dense_rank() over (order by esal desc) as ranking from rup_emp) 
where ranking=2 ;

select * from
(select rup_emp.*, dense_rank() over (order by esal desc) as ranking from rup_emp)
where ranking=2;

############### display lowest salary
select * from 
(select eid,ename,esal, dense_rank() over (order by esal asc)as ranking from rup_emp)
where ranking =1;

################3 top highest two salary

select * from 
(select eid, ename, esal, dense_rank() over (order by esal desc)as ranking from rup_emp)
where ranking <=2;

############## 3rd highest to 9th highest salary

select * from
(select eid, ename, esal, dense_rank() over (order by esal desc)as ranking from rup_emp)
where ranking between 3 and 9;

########### 3rd, 5th, 7th,9th max salary  
select * from
(select eid, ename, esal, dense_rank() over (order by esal desc)as ranking from rup_emp)
where ranking in(3,5,7,9);

///////////----- 
select * from 
(select eid, ename, esal, rank()  over (order by esal desc )as ranking from rup_emp)
where ranking = 3; 

select * from 
(select rup_emp.*, rank() over(order by esal desc nulls last)as ranking from rup_emp)
where ranking =3;

select * from
(select eid,esal,dense_rank() over(order by esal) as ranking from rup_emp)
where ranking =3;

select * from rup_emp;









