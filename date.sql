create table datfun(eid number(10), ename varchar2(20), doj date);
select * from datfun;
insert into datfun (eid, ename, doj) values (1, 'a', to_date('02-18-2019', 'mm-dd-yyyy'));
insert into datfun (eid, ename, doj) values (2, 'v', to_date('01-14-2019', 'mm-dd-yyyy'));
insert into datfun (eid, ename, doj) values (3, 'b', to_date('02-18-2019', 'mm-dd-yyyy'));

/////// months between ///////
select months_between('01-feb-2015','01-feb-2014') from dual;

////// add months //////
select add_months('05-nov-2014',6) from dual;

////// next day/////
select next_day('02-mar-2019', 'sunday') from dual;

/////// last_day/////
select last_day('2-mar-2019') from dual;


------------/////// STUDY //////----------
----------  add months in user created tables   ------
select add_months(doj,6) from datfun;

select add_months(doj,6) from datfun
where eid= 1 ;

select add_months(doj,6) from datfun
where eid= 1 or eid= 2;


create table rupali1(eid number (10), ename varchar2 (70),doj date);
insert into rupali1 (eid,ename,doj) values(1,'a', to_date('1/10/1991', 'mm/dd/yyyy'));
select * from rupali1;
select months_between('01-oct-1991','01-oct-2019')/12 as years from dual;
select months_between('01-oct-1991','01-oct-2019') as months from dual;
select add_months (sysdate,6) from dual;
select add_months ('01-oct-1991',336) from rupali1;

select add_months ('07-mar-2019',6, '01-oct-1991',6) from rupali1;