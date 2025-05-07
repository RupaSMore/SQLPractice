################## alter command  ############
create table alt(aid number(10), aname varchar(20),address varchar(20), mob number(10),pincd number(6));
//////// delete column from exising table//////
alter table alt
drop column address;

alter table alt
drop  (address);

alter table alt
drop address;    ************** wrong syntax******

alter table alt
drop column (address);   ************wrong syntax

################## add columns to existing table ##################
alter table alt
add (address varchar(20));
desc alt;

alter table alt
add (esal number(10), address varchar(20));

############## rename column from existing table ###################
alter table alt
rename column aname to ename;

alter table alt
modify (address varchar(20);

alter table alt
modify (mob number(14));

insert into alt values(1,'rs',99663325, 123456,70000,'pune');
select * from alt;
desc alt;

*******************************************************************************************
alter table sachin 
drop constraint SYS_C004068;
desc sachin;

##########///////add/drop  primary and  foreign key constraint to existing table/////#################
create table sachin(sid number(10), sname varchar(10), smob number(10));

alter table sachin
add constraint pk1_id primary key (sid);

alter table sachin
drop constraint pk1_id;

create table rupali(rid number(10), rname varchar(10), rid number(10));

alter table rupali
add constraint fk2_id foreign key (sid) references sachin (sid);

alter table rupali
drop constraint fk2_id;
desc rupali;

create table prs(pid number(20) primary key, pname varchar(20));
 
 alter table prs
 drop constraint SYS_C004072;
 
 /////////// unique key constraint //////
 alter table prs
 add constraint uk_id unique(pname);
 desc prs;
 alter table prs 
 drop constraint uk_id;
 
 alter table prs 
 add  (esal number(20));
 
 alter table prs
 add constraint chk_id check(esal>50000);
 
 create table tbl(tid number(10) constraint pkid primary key, tname varchar(20));
 
desc prs;

alter table prs
modify (pname number(10));

alter table inv
modify vname not null;
desc inv;
alter table inv
drop constraint SYS_C004067;

alter table inv
modify vname default 'rupali';

