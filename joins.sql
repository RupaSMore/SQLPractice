create table cust_info(cid number(10), cname varchar(20), city varchar(20));
insert into cust_info values(1, 'A', 'pune');
insert into cust_info values(2, 'B', 'mun');
insert into cust_info values(3, 'C', 'nasik');
insert into cust_info values(4, 'D', 'delhi');
insert into cust_info values(5, 'F', 'pune');
insert into cust_info values(6, 'G', 'solapur');
insert into cust_info values(7, 'H', 'mum');
select * from cust_info;

create table order_info(oid number(10), oname varchar(20), cid number(20));
insert into order_info values(1, 'PD',4);
insert into order_info values(2, 'HDD',2);
insert into order_info values(3, 'mob',1);
insert into order_info values(4, 'Lap',2);
insert into order_info values(5, 'PD',1);
insert into order_info values(6, 'mob',17);
insert into order_info values(7, 'PD',19);
insert into order_info values(8, 'mob',4);
select * from order_info;
 
 create table invoice_info(invid number(15), inv_amt number(20), cid number(15));
 insert into invoice_info values(1,15000,1);
 insert into invoice_info values(2,1000,3);
 insert into invoice_info values(3,5000,3);
 insert into invoice_info values(4,10000,4);
 select * from invoice_info;
 
########### inner join  #######
 select * from cust_info
 inner join order_info
 on cust_info.cid= order_info.cid;
 
 ########### outer join ###########
 ////////// left outer join ///////
 select * from cust_info
 left outer join order_info
 on cust_info.cid= order_info.cid;
 
 ///////// right outer join ///////
 select * from cust_info
 right outer join order_info
 on cust_info.cid= order_info.cid;
 
 //////// full outer join //////
 select * from cust_info
 full outer join order_info
 on cust_info.cid=order_info.cid;
 
   
   /////// join 3 tables////////
   select c1.cname, o1.oname, i1.inv_amt 
   from cust_info c1
   inner join order_info o1
   on c1.cid= o1.cid
   inner join invoice_info i1
   on c1.cid= i1.cid;
   
   ////// cross join //////
   select * from cust_info
   cross join order_info;
   
   select * from cust_info;
   select * from order_info;
   
   ////// equi join ////
   select * from cust_info c1, order_info o1
   where c1.cid= o1.cid;
   
   /////// non equi join ///////
   select * from cust_info c1, order_info o1
   where c1.cid != o1.cid;
   
   /////// self join   /////
   
   create table sjoin (eid number(10), fname varchar(20), mid number(10));
   insert into sjoin values(1, 'amit', 3);
   insert into sjoin values(2, 'yusuf', 4);
   insert into sjoin values(3, 'rupa', 2);
   insert into sjoin values(4, 'pranu', 5);
   insert into sjoin values(5, 'rahul', 1);
   select * from sjoin;
   
   
   select e1.fname as empname, e2.fname as manager 
   from sjoin e1
   inner join sjoin e2 
   on e1.mid = e2.eid;
   
   
   
   