
use rupali;
create table charfun(eid int, fname varchar(20), lname varchar(10));
insert into charfun values(1,'amit', 'Patil');
insert into charfun values(2,'SachiN', 'Gade');
insert into charfun values(3,'nikhiL', 'PaWar');
insert into charfun values(4,'sWati', 'kaNde');
insert into charfun values(5,'abhijit', 'vidhatE');
insert into charfun values(6,'TarA', 'Phule');
insert into charfun values(7,'SuMit', 'chaVhan');

select * from charfun;

---------- display names in lower case  ----------
select lower(fname) from charfun;
select eid, lower(fname) as name from charfun;

-----------  display names in upper case ---------
select upper(fname) from charfun;
select eid, upper(fname) as name from charfun;

--------- display names with initial letter capital  ----------
Select initcap(fname) from charfun; ----- not works in sql server---

--------- substring ---------    not works

select * from charfun;
select substr(fname,2,3) from charfun;
select length(fname) from charfun;

create table product(pid number(10), product_info varchar(50));
insert into product values(2, 'TV123456789samsung');

select substr(product_info,3,9)||substr(product_info,-7,5) from product;
select substr(product_info,3,9)||substr(product_info,-7,5) as modelno_productno from product;

select substr(product_info,3,9)||'_'||substr(product_info,-7,5) from product;



