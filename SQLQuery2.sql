/*UC 11:
Add Person*/
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
/*Retrive data with given city and state name */
select * from address_book where State='Uttar Pradesh' or City='Agra';
/*Find size of address book by city*/
select City,count(City) as CitySize from address_book group by City;
/*Find size of address book by State*/
select State,count(State) as StateSize from address_book group by State;
/*Retrieve the data in alphabetical order*/
select * from address_book where City='Agra' order by FirstName;
/*Alter address_book by name and contact type*/
alter table address_book add AddressBookName varchar(100),ContactType varchar(100);
/*Get count*/
select count(*) from address_book;
/*Insert data*/
insert into address_book values
('Steven','Spielberg','Cincinnati','Ohio','United States',256871,8521479630,'spielberg@gmail.com','Kartikeya','Stars');

/*UC 12:
ER Diagram implementation*/
use addressBookService;

/*Table personalDetails and adding data to it*/
create table personalDetails(FirstName varchar(100) primary key not null,LastName varchar(100), Address varchar(500),PhoneNo bigint,Email varchar(250));
insert into personalDetails values('Kumar','Kartikeya','Techman City',7206183244,'kumar.kartikeya@capgemini.com');
insert into personalDetails values('Steven','Spielberg','Cincinnati',8521479630,'spielberg@gmail.com');

/*Table contactDetails and adding data to it*/
create table contactDetails(FirstName varchar(100) not null,LastName varchar(100),Address varchar(500),City varchar(50),State varchar(50),Zip int,foreign key(FirstName) references personalDetails(FirstName));
insert into contactDetails values('Kumar','Kartikeya','Techman City','Agra','Uttar Pradesh',281006);
insert into contactDetails values('Steven','Spielberg','Cincinnati','Ohio','United States',256871);

/*Table contactType and adding data to it*/
create table contactType(FirstName varchar(100) not null,LastName varchar(100),Type varchar(100),foreign key(FirstName) references personalDetails(FirstName));
insert into contactType values('Kumar','Kartikeya','Family');
insert into contactType values('Steven','Spielberg','Friends');

/*Table addressBook and adding data to it*/
create table addressBook(FirstName varchar(100) not null,LastName varchar(100),AddressBookName varchar(100),foreign key(FirstName) references personalDetails(FirstName));
insert into addressBook values('Kumar','Kartikeya','Home');
insert into addressBook values('Steven','Spielberg','Work');