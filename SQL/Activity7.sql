REM   Script: Activity07
REM   Activity07

CREATE TABLE salesman (   
    salesman_id int,   
    salesman_name varchar2(32),   
    salesman_city varchar2(32),   
    commission int   
);

insert all    
into salesman values(5002,'Nail Knite','Paris',13)   
into salesman values(5005,'Pit Alex','London',11)   
into salesman values(5006,'McLyon','Paris',14)   
into salesman values(5007,'Paul Adam','Rome',13)   
into salesman values(5003,'Lauson Hen','Paris',12)   
select 1 from dual ;

Alter salesman add Grade int;

Alter table salesman add Grade int;

update salesman set grade=100 where salesman_id=5002;

update salesman set grade=200 where salesman_id=5005 ;

update salesman set grade=100 where salesman_id=5006 ;

update salesman set grade=200 where salesman_id=5007 ;

update salesman set grade=100 where salesman_id=5003;

update salesman set grade=100 where salesman_id=5006;

update salesman set grade=100 where salesman_id=5006;

update salesman set grade=200 where salesman_id=5007;

update salesman set grade=200 where salesman_id=5007;

Select * from salesman;

update salesman set grade=100 where salesman_id=5003;

Select * from salesman;

update salesman set salesman_name='Pierre' where salesman_name='McLyon';

update salesman set grade=300 where salesman_name='James Hoog';

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select distinct * from orders ;

select order_no from orders order by order_date;

select order_no from orders order by order_date asc;

select order_no from orders order by purchase_amount ;

select * from orders order by purchase_amount having <500;

select * from orders where order purchase_amount<500 by purchase_amount;

select * from orders where purchase_amount<500 order by purchase_amount;

select * from orders where purchase_amount betweeen 1000 and 2000;

select * from orders where purchase_amount between 1000 and 2000;

select sum(purchase_amount) as "Total Purchase amount" from orders;

select avg(purchase_amount) as "Total Purchase amount" from orders;

select avg(purchase_amount) as "Average Purchase amount" from orders;

select min(purchase_amount) as "Mininum Purchase amount" from orders;

select max(purchase_amount) as "Maximum Purchase amount" from orders;

select distinct salesman_id from orders;

select count(distinct salesman_id) as "Total salesman" from orders;
