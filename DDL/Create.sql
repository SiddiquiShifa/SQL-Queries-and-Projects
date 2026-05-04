/*Create a new table called 
persons with column id,  person_name , birth_date & phone
*/
Create table persons(
	id int not null,
	person_name varchar(50) not null,
	birth_date date ,
	phone varchar (15) not null,

	constraint pk_persons primary key (id)

)
Select * from persons
