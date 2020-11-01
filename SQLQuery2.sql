/*UC 8:
Sort data alphabetically*/
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

