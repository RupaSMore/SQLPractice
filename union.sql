create table u1(roll_no number(20), stud_name varchar(20));
insert into u1 values (1, 'A');
insert into u1 values (2, 'B');
insert into u1 values (3, 'C');
insert into u1 values (4, 'D');
create table u2(emp_no number(20), emp_name varchar(20));
insert into u2 values (1, 'E');
insert into u2 values (2, 'F');
insert into u2 values (3, 'G');
insert into u2 values (4, 'H');
select * from u2;
select * from u2;

/////// union/////
select * from u1
union
select * from u2;

///////// union all //////
select * from u1
union all
select * from u2;

//////minus////
select * from u1
minus
select * from u2;

select * from u2
minus
select * from u1;



