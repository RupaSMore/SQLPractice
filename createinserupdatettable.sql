////////////  create table ///////////////
create table student_info(sid number, sname varchar(20),sadd varchar(20), pincd number(8));

/////////// insert data into table ///////
insert into student_info values (4,'cc', 'pune', 411003);
insert into student_info(sid, sname,sadd) values (5,'rupa', 'kopargaon');

select * from student_info; 
/////// display whole table////////////
desc student_info;

///////////delete data from table ///////////
delete from student_info;   ****** it also deletes all records from table ********

select * from student_info
delete from student_info;

//////////// where clause //////////
select * from student_info
where sadd = 'pune';

delete from student_info
where sid =2;
//////////drop  table /////////////
create table dummy(d1 number(12), dname varchar(20));
 insert into dummy values(1,'keshav');

 drop table dummy;
///////////  update table /////////\
update student_info
set sadd = 'satara'
where sid =1;
 
 update student_info
 set pincd =425542
 where sid=1 and sname ='a';
 
 
