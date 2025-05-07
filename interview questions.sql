############  1. Display 2nd max/ highest salary  ############
--------- 1st way *********
select max(esal) from rup_emp
where esal <(select max(esal) from rup_emp);

---------- 2nd way ---------
select * from
(select rup_emp.*, dense_rank() over(order by esal desc ) as ranking from rup_emp)
where ranking =2;

------ if there is null value in esal column then use below query ----
---------- 3rd way ---------
select * from
(select rup_emp.*, dense_rank() over(order by esal desc nulls last) as ranking from rup_emp)
where ranking =2;

##########   Que 2. Display 3rd max salary #########
--------- 1st way *********
select max(esal) from rup_emp
where esal<(select max(esal) from rup_emp
where esal< (select max(esal) from rup_emp));
-------- above query displays only highest salary  ----------

---------- 2nd way ---------
select * from
(select rup_emp.*, dense_rank() over(order by esal desc) as ranking from rup_emp)
where ranking =3;

-------- above query displays records of having 3rd highest salary -------
---------- 3rdd way ---------
select * from
(select rup_emp.*, dense_rank() over(order by esal desc nulls last) as ranking from rup_emp)
where ranking =3;
-------- above query displays records of having 3rd highest salary -------


###########   Que 3. Display nth highest salary   #########
select * from
(select rup_emp.*, dense_rank() over(order by esal desc nulls last) as ranking from rup_emp)
where ranking =n;

######### Que 4. Display 2nd lowest salary   ######
select * from
(select rup_emp.*, dense_rank() over(order by esal) as ranking from rup_emp)
where ranking =2;

######### Que 5. Display 3rd lowest salary ########
select * from
(select rup_emp.*, dense_rank() over(order by esal) as ranking from rup_emp)
where ranking =3;

##########  Que 6. Display nth lowest salary   ########
select * from
(select rup_emp.*, dense_rank() over(order by esal) as ranking from rup_emp)
where ranking =n;

-----  n = some number  ----

######### Que. 7 Display top two highest salary  ########
select * from
(select rup_emp.*, dense_rank() over(order by esal desc nulls last) as ranking from rup_emp)
where ranking <=2;


#########   Que. 8 Display top five highest salary   ########
select * from
(select rup_emp.*, dense_rank() over(order by esal desc nulls last) as ranking from rup_emp)
where ranking <=5;


##########   Que. 9 Display Salary between range  (3rd highest to 9th highest salary)   ########
select * from
(select eid, ename, esal, dense_rank() over (order by esal desc nulls last)as ranking from rup_emp)
where ranking between 3 and 9;


Que. Display records of employees having salary between 40000 to 60000 
select * from rup_emp
where esal between 40000 and 60000;

#########  Que. 10. Display salary with particular set  #######
select * from
(select eid, ename, esal, dense_rank() over (order by esal desc)as ranking from rup_emp)
where ranking in(3,5,7);

Que. Display records of employees having salary with paricular set(40000,60000,65000 )
select * from rup_emp
where esal in(40000,60000,65000);

###########  Que. 11. Display duplicate records   ########
select dept from emp2
group by dept
having count(dept)>1;
------- displays departments having duplicate values  ---
select dept, count(dept) from emp2
group by dept
having count(dept)>1;
------- displays departments having duplicate values with its count  ----
##########  Que. 12. delete duplicate records   ###########
create table del_dupli(eid number(10), ename varchar (20), dept varchar(25));
insert into del_dupli values(1, 'A','cse');
insert into del_dupli values(2, 'B','it');
insert into del_dupli values(3, 'C','mech');
insert into del_dupli values(4, 'D','it');
insert into del_dupli values(5, 'E','cse');
insert into del_dupli values(6, 'F','mech');
insert into del_dupli values(7, 'G','it');
insert into del_dupli values(8, 'H','cse');
insert into del_dupli values(9, 'I','civil');
insert into del_dupli values(10, 'J','mech');
insert into del_dupli values(11, 'K','it');
select * from del_dupli;

//////// below query is used when new records are original

delete from del_dupli
where rowid not in
( select max(rowid) from del_dupli
group by dept);

//////// below query is used when old records are original

delete from del_dupli;
select * from del_dupli;

delete from del_dupli
where rowid not in
( select min(rowid) from del_dupli
group by dept);

######### Que 13 How to update even and odd records   #########
Look in even-odd sql file

######## Que 14. How to update salaries of all employees with 10%   ###########
create table update_sal (eid number(10),ename varchar (20), esal float(20));
insert into update_sal values(1,'A', 50000);
insert into update_sal values(2,'B', 60000);
insert into update_sal values(3,'C', 70000);
select * from update_sal;

update update_sal
set esal = esal*1.1;


######## Que 15. In how many ways can you copy table  ########
select * from emp;
-----1st way
create table empcp as
select * from emp;

select * from empcp;
-----2nd way
delete from empcp;

insert into empcp
(select * from emp);
select * from empcp;

####### Que 16.  Suppose table has 100 columns, then how will you find primary key is applied on which column?

select * from user_constraints
where table_name= 'EMP';
------ Note = table name must be in capital letter ----------

also we can find it in GUI

#######  Que 17. Calculate total experience of employee
 create table emp_exp(eid number(10), ename varchar(20), Jdate date);
 insert into emp_exp values(1, 'yusuf','30-oct-2014');
 insert into emp_exp values(2, 'rupali','25-jan-2016');
 select * from emp_exp;
 
  select eid, ename, trunc(months_between(sysdate,jdate)/12) as year
  from emp_exp;
  
   select eid, ename, trunc(months_between(sysdate,jdate)/12)*12 as months
   from emp_exp;
        
  select eid, ename, trunc(months_between(sysdate,jdate)) as months
  from emp_exp;
     
 select eid, ename, trunc(months_between(sysdate,jdate)/12) as year, 
 trunc(months_between(sysdate,jdate)-trunc(months_between(sysdate,jdate)/12)*12)as months,
 trunc(sysdate)-add_months(jdate, trunc(months_between(sysdate,jdate))) as days
 from emp_exp;
 
#########  Que 18

 