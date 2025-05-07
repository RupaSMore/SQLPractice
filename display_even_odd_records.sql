create table e1(roll_no number(20), stud_name varchar(20));
insert into e1 values (1, 'A');
insert into e1 values (2, 'B');
insert into e1 values (3, 'C');
insert into e1 values (4, 'D');
select * from e1;

/////// update even records /////
update e1 
set stud_name='amit' 
where mod(roll_no,2)=0;

///// update odd records //////
update e1 
set stud_name='amit' 
where mod(roll_no,2)=0;

//////  display even records ////
select * from e1
where mod(roll_no, 2)=0;

/////// display odd records /////
select * from e1
where mod(roll_no, 2)=1;
