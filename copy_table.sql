*******interview question*****
/////In how many ways can you copy table?/////

create table copy(eid number(12), ename varchar(20));
insert into copy values (1, 'A');
insert into copy values (2, 'B');
insert into copy values (3, 'C');
insert into copy values (4, 'D');
insert into copy values (5, 'E');
insert into copy values (6, 'F');

///// 1st way to copy /////
create table copy1 as
select * from copy;

select * from copy1;

//////// 2nd way to copy/////
create table copy2(eid number(12), ename varchar(20));

insert into copy2
(select * from copy);

select * from copy2;