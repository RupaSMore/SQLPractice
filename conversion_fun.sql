create table conv_fun(eid number(10), ename varchar(20), doj date, eadd varchar(20), esal number(20), dept varchar(20));
insert into conv_fun(eid,ename,doj,eadd,esal,dept) values(1,'sachin','22-feb-2012', 'solapur', 50000, 'admin');
insert into conv_fun(eid,ename,doj,eadd,esal,dept) values(2,'rupali','01-mar-2014', 'kolhapur', 60000, 'hr');
insert into conv_fun(eid,ename,doj,eadd,esal,dept) values(3,'dipali','05-jan-2012', 'pune', 50000, 'developement');
insert into conv_fun(eid,ename,doj,eadd,esal,dept) values(4,'pranali','01-jun-2018', 'pune', 55000, 'testing');
insert into conv_fun(eid,ename,doj,eadd,esal,dept) values(5,'rahul','22-sep-2018', 'mumbai', 25000, 'testing');
insert into conv_fun(eid,ename,doj,eadd,esal,dept) values(6,'sagar','01-feb-2014', 'kopargaon', 40000, 'management');
insert into conv_fun(eid,ename,doj,eadd,esal,dept) values(7,'pravin','15-apr-2015', 'rahata', 21000, 'hr');
select * from conv_fun;

//////// to_char== ,YYYY, YY, YEAR, MM, DD, MON, DAY   //////////////
select to_char(doj,'yyyy') from conv_fun;
select eid,ename,to_char(doj,'mm/yyyy') from conv_fun;
select to_char(doj,'dd/mm/yyyy') from conv_fun;
select to_char(doj, 'year') from conv_fun;
select to_char(doj, 'MM') from conv_fun;
select to_char(doj, 'mon') from conv_fun;
select to_char(doj, 'day') from conv_fun;

select * from conv_fun
where to_char(doj,'q')='2';

select * from conv_fun
where to_char(doj,'mm')= '03';

select * from conv_fun
where to_char(doj,'mon')='mar';

///////// display records of first half year ///////

select * from conv_fun
where to_char(doj, 'q')= '1' or
to_char(doj,'q')='2' ;

////// to display records of  quarter=1,2,4   /////////
select * from conv_fun
where to_char(doj, 'q')= '1' or
to_char(doj,'q')='2' or
to_char(doj,'q')='4' ;

///////(2) Decode ////
select decode (eadd ,'mum','mumbai','pur', 'solapur','not specified') from conv_fun;

///////  nvl => raplace null values with given values /////
select nvl(esal,55000) from conv_fun;
