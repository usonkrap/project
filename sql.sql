create table customer(
	cust_email varchar2(30) primary key,
	cust_password varchar2(20) not null,
	cust_nickname varchar2(50) not null,
	cust_address varchar2(100) not null,
	cust_birthday date not null,
	cust_gender char(1) default 'M' check (cust_gender='M' or cust_gender='F'), 
	cust_activity char(1) default 'T' check (cust_activity='T' or cust_activity='F'),
	cust_signup_date date default sysdate,
	cust_target_price number(20)
);

select * from customer


insert into bill values(78, 'master@master')




create table bill(
 billNo NUMBER PRIMARY key,
  customerId varchar2(30) REFERENCES customer(cust_email),
  billDate date not null,
  address varchar2(300),
  storeName varchar2(200),
  totalPrice number not null,
  payment VARCHAR2(10),
  img varchar2(300)
);

create SEQUENCE bill_seq;

create table item(
 	itemNo NUMBER PRIMARY key,
  billNo number REFERENCES bill(billno),
  customerId varchar2(30) REFERENCES customer(cust_email),
  category varchar2(30),
  name varchar2(200),
  price number
);

create SEQUENCE item_seq;

commit;

create SEQUENCE item_seq;


insert into bill values(1,'sntq3sk@naver.com','2016/10/23','서울시','cj푸드',46000,'card','#');
insert into bill values(2,'sntq3sk@naver.com','2016/10/23','서울시','신세계푸드',32500,'card','#');
insert into bill values(3,'sntq3sk@naver.com','2016/10/24','군산시','오크우드',18000,'cash','#');

insert into item values(1, 1 ,'외식' ,'스테이크',18000);
insert into item values(2, 1 ,'외식' ,'제일면세소',9000);
insert into item values(3, 1 ,'외식' ,'수제비',7000);

insert into item values(4, 2 ,'외식' ,'올반데이',18000);
insert into item values(6, 2 ,'외식' ,'불맛짬뽕',9000);
insert into item values(8, 2 ,'외식' ,'반계탕',7000);

insert into item values(5, 3 ,'외식' ,'오징어찌게',8000);
insert into item values(7, 3 ,'외식' ,'바나나',500);
insert into item values(9, 3 ,'외식' ,'된장찌게',7000);

insert into bill values(bill_seq.nextval, 'master@master.com', to_date('2016-08-28 15:47:01', 'YYYY-MM-DD HH24:MI:SS'), null, '축의금', 50000, '현금', null);
insert into item values(item_seq.nextval, 247, 'master@master.com', 'L07M01', '축의금', 50000);

insert into bill values(bill_seq.nextval, 'master@master.com', to_date('2017-01-14 13:02:01', 'YYYY-MM-DD HH24:MI:SS'), '서울시 강남구 삼성로', 'KFC 코엑스몰', 5000, '카드', null);
insert into item values(item_seq.nextval, 490, 'master@master.com', 'L01M05', '치즈멜츠타워버거 콤보', 5000);

select * from bill order by billno desc;
select * from sub_category order by sub_category_num;
select * from CATEGORY_DATA;
select * from major_category;
select * from customer order by cust_signup_date desc;
select * from bill where customerid = '4@4.com';
select * from item order by itemno desc;

select billno, price, itemno from item where customerid != 'master@master.com' order by billno desc;
select billno, totalprice from bill where customerid != 'master@master.com' order by billno desc;

update bill set totalprice = 30000 where billno = 180;
UPDATE item SET price = 30000 WHERE itemno = 177;

select * from bill where billno = 299;
insert into item values(item_seq.nextval, 299, 'test2@test.com', 'L04M04', '파마', 5500000);

delete from customer where cust_email = 'sntq3sk@naver.com';

delete from item where itemno = 492;
delete from bill where billno = 481;



select s.sub_category_name as category, sum(i.price) as sum
from item i, major_category m, sub_category s 
where i.customerid='master@master.com' and i.category = s.sub_category_num and m.category_num = substr(i.category, 1, 3) and m.category_name = '외식' and m.category_num = s.category_num
group by s.sub_category_num, s.sub_category_name
order by s.sub_category_num;

create table month(
month varchar2(6)
);

insert into month values('12');

select * from month;

select
	sum(totalprice)
from
	(select * from bill where customerId ='master@master.com')
where
	(to_char(billdate, 'hh24') between 0 and 5)
union
select
	sum(totalprice)
from
	(select * from bill where customerId ='master@master.com')
where
	to_char(billdate, 'hh24') between 6 and 11
union
select
	sum(totalprice)
from
	(select * from bill where customerId ='master@master.com')
where
	to_char(billdate, 'hh24') between 12 and 17	
union
select
	sum(totalprice)
from
	(select * from bill where customerId ='master@master.com')
where
	to_char(billdate, 'hh24') between 18 and 23
	
	
	
	
	
	
	
	
select
sum(totalprice)
from
(select * from bill where customerId ='master@master.com')
where
to_char(billdate, 'hh24') between 6 and 11

select
sum(totalprice)
from
(select * from bill where customerId ='master@master.com')
where
to_char(billdate, 'hh24') between 12 and 17

select
sum(totalprice)
from
(select * from bill where customerId ='master@master.com')
where
to_char(billdate, 'hh24') between 18 and 23
