////////// create primary key table  ///////////////
create table emp4 (eid number(10) primary key, ename varchar(20), emob number(10),esal float);
insert into emp4 values(2, 'B', 9922364154, 55000.00);

///////////// foreign key table//////////////////
create table inc(cid number(10), inc_amt number(20) ,eid number(10) references emp4(eid));
insert into inc values(1, 1500, 1);
insert into inc values(2, 2500, 2);
insert into inc (cid,inc_amt)values(3,1500);
select * from inc;

////////////// composite key ///////////////////

create table comp(eid number(10), ename varchar(20), emob number(14) unique, esal float check (esal >50000),eadd varchar(20),primary key(eid, ename, eadd));
insert into comp values(1, 'A',992564568,50010,'pune');
select * from comp;
insert into comp values(1, 'A',992564588,50500,'goa');
insert into comp values(2, 'B',992544568,50010,'shirdi');
insert into comp values(3, 'AC',992564268,50010,'pune');