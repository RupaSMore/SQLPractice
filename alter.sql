create table emp5 (eid number(10), ename varchar(20));
alter table emp5
add (emob number(10));
desc emp5;
alter table emp5
add ( pincd number(6));

alter table emp5
drop emob;

alter table emp5
rename column empid to eid;

insert into  emp5 values(1,'a',992236415, 'pune');
alter table emp5
modify (emob number(9));

alter table emp5
modify (pincd varchar(10));
desc emp5;

alter table emp5
add constraint pk_eid primary key(eid);

alter table emp5
drop constraint pk_eid;

alter table emp5
add constraint uk_id unique (emob);

alter table emp5
drop constraint uk_id;
alter


create table prem(eid number(10)constraint pk_id primary key, ename varchar(20) );
desc prem;
alter table prem
add (esal number(20));

alter table prem
add constraint chk_id  check (esal>50000);

alter table prem
drop constraint chk_id;

create table fk(fid number(10), f_amt number(10),cid number(10));
drop table fk;
desc fk;
alter table fk
add constraint fk_id foreign key (cid) references prem (eid);

alter table emp5
add constraint fk1 foreign key (emob) references prem (eid);
desc emp5;

create table inv(vid number(10), vname varchar(10), vfid number(10));
alter table inv
add constraint fk1_id foreign key (vfid) references prem (eid);

alter table inv
modify vname not null;
desc inv;
alter table inv
drop constraint SYS_C004067;


alter table inv
modify vname default 'rupali';

select eid, rowid from employee;

select esal,rowid from employee
order by esal asc;
select * from employee;