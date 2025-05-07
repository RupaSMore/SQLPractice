////////////   constraints //////
////////////  primary key  /////////////

create table emp (eid number(20) primary key, ename varchar2(20), eadd varchar2(20));
desc emp;
INSERT INTO emp  VALUES (2 ,'b', 'solapur');
select * from emp;  

///////// composite key ///////////////////
create table comp_key(eid number(10),ename varchar2(20), eadd varchar2(20),emob number(14), primary key(eid,emob));
desc comp_key;
INSERT INTO comp_key VALUES (1,'aa','pune',55224455);
INSERT INTO comp_key VALUES (2,'aa','pune',95224455);
INSERT INTO comp_key VALUES (2,'b','pune',95224455);      /// composite keyy column dont accepts same or duplicat values ///////

/////// unique key //////
create table uniq_key(eid number(20) unique, ename varchar2(20), eadd varchar2(20));
insert into uniq_key (ename,eadd) values ('b','ad');
select * from uniq_key;

create table uniq_key1(eid number(20) unique, ename varchar2(20), eadd varchar2(20));
insert into uniq_key1 (ename,eadd) values ('b','ad');
select * from uniq_key1;

/////// not null /////
create table nt_nl(eid number(20) not null, ename varchar2(20), eadd varchar2(20));
desc nt_nl;

///////// check constraint ////////
create table chk(eid number(20) unique, ename varchar2(20), esal float check (esal > 40000));
insert into  chk values(1, 'a', 45000);
insert into  chk values(2, 'b', 6000);
select * from chk;
  
//////// default constraint ///////
create table dfault(eid number(20), ename varchar2(20), eadd varchar2(20) default 'kopargaon');
insert into dfault values(1,'d','pune');
insert into dfault(eid, ename) values(2,'f');
select * from dfault;




