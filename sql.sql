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





DECLARE
    j    NUMBER (3);
BEGIN
    FOR j IN 1 .. 10
    LOOP
         insert into customer(cust_email, cust_password, cust_nickname, cust_address, cust_birthday) 
		values('test1@test.com', '1111', 'test1', '서울강남구대치동', '2000-10-15');

    END LOOP;
END;

       







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

insert into bill values(bill_seq.nextval, 'master@master.com', '2016-09-30 12:32:01', '서울 강남구 삼성로104길', '마시타야', 6700, '카드', null);

commit;






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
