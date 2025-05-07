select * from emp3;
//// display min salary /////
select min(esal) from emp3;

///// dislay max salary /////
select max(esal) from emp3;

////// display record of  max salary /////
select * from emp3 
where esal in(select max(esal) from emp3);

///// average /////
select avg(esal) from emp3;

///// sum////
select sum(esal) from emp3;

///// count/////////
select count(esal) from emp3;

select count(*) from emp3;

select distinct (esal) from emp3;

select * from emp3
where esal in(select distinct(esal) from emp3);

select count(distinct (esal)) from emp3;