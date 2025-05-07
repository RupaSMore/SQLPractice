use rupali;
create table person_info(pid int, pname varchar(20),sadd varchar(20), pincd int);

insert into person_info values(1,'rupali','pune',423601);
insert into person_info (pid,pname,sadd) values (2,'sachin','kopargaon');
select * from person_info;

--------- display whole table ---------
--------desc person_info;    --------------------- not works

------ delete data from table --------
delete from student_info;   ----****** it also deletes all records from table ********
insert into student_info values(1,'rs','pune',524662);
insert into student_info values(2,'rupa','kopargaon',423601);
insert into student_info values(3,'sachin','ravande',423601);

select * from student_info
delete from student_info;

-------- where clause ----------
select * from student_info
where sid = 1 ;

delete from student_info
where sid =1;

------- drop  table --------
use rupali;
create table dummy(d1 int, dname varchar(20));
 insert into dummy values(1,'keshav');

select * from dummy;
drop table dummy;
 
--------  update table ----------
update student_info
set sadd = 'pune'
where sid =1;

select * from student_info;
 
 update student_info
 set pincd =425542
 where sid=2 and name ='rupa';
 
 
