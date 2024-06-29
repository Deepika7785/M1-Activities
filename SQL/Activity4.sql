REM   Script: Activity04
REM   Activity04

Select * from salesman;

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

Alter salesman add Grade;

Alter salesman add Grade int;

Alter table salesman add Grade int;

update salesman set grade=100 where salesman_id=5002;

update salesman set grade=200 where salesman_id=5005 
update salesman set grade=100 where salesman_id=5006 
update salesman set grade=200 where salesman_id=5007 
update salesman set grade=100 where salesman_id=5003;

update salesman set grade=200 where salesman_id=5005;

update salesman set grade=100 where salesman_id=5006;

update salesman set grade=200 where salesman_id=5007;

update salesman set grade=200 where salesman_id=5007;

update salesman set grade=100 where salesman_id=5003;

Select * from salesman;
