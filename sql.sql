create table customer(
	cust_email varchar2(30) primary key,
	cust_password varchar2(20) not null,
	cust_nickname varchar2(50) not null,
	cust_address varchar2(100) not null,
	cust_birthday date not null,
	cust_gender char(1) default 'M' check (cust_gender='M' or cust_gender='F'), 
	cust_activity char(1) default 'T' check (cust_activity='T' or cust_activity='F'),
	cust_signup_date date default sysdate
);

select * from customer

alter table customer add(cust_target_price number(20));
