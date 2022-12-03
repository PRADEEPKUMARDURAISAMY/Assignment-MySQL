show databases;
use assignment;

create table salespepole(
Snum int(20) Primary key,
Sname varchar(30) Unique,
city varchar(30),
comm int(10));

insert into salespepole(Snum ,Sname,city,comm)
values(1003 , 'Axelrod' ,'Newyork' ,10);

SELECT * FROM SalesPepole;

create table Customers(
Cnum int(20) Primary Key,
City varchar(30) not null,
Snum int(20) ,
constraint mass foreign key(Snum) references SalesPepole(Snum)
);

insert into Customers(Cnum ,City,Snum)
values(2007 ,'Pereira Rome' ,1004);

SELECT * FROM Customers;

create table orders(
Onum int(20) Primary key,
Amt varchar(20),
Odate int(20),
Cnum int(20) , constraint lass foreign key(Cnum) references Customers(Cnum),
Snum int(20), constraint kass foreign key(Snum) references SalesPepole(Snum)
);

insert into orders(Onum ,Amt,Odate,Cnum,Snum)
values(3011,9891.88 ,6-10-1990 ,2006 ,1001);

select * from orders;

select * from salespepole
where Sname like 'A%' ;

select * from orders where amt>2000;

select * from salespepole
where City like 'newyork%'

select * from salespepole
where City like 'London%' or 'Paris%'

select * from orders where amt>2000;

select count(Onum), count(Odate) from orders; 
select Odate from orders;

