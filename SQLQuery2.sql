/*UC 5:
Delete data from table*/
create database addressBookService;
use addressBookService;
/*Create address_book table*/
create table address_book
(FirstName varchar(100) not null,
LastName varchar(100),
Address varchar(500) not null,
City varchar(50) not null,
State varchar(50) not null,
Zip int not null,
PhoneNo bigint not null,
Email varchar(250) not null
);
/*Insert data in table*/
insert into address_book values
('Kumar','Kartikeya','Techman City','Agra','Uttar Pradesh',281006,7206183244,'kumar.kartikeya@capgemini.com');
/*Update data into the table*/
update address_book set Zip=281001 where FirstName='Kumar';
/*Delete data from table*/
delete from address_book where FirstName='Kumar';