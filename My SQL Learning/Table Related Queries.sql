#Table related queries

create table if not exists little_mira(
	id int primary key,
	name varchar(50),
    age int
);

#Adding coulumn query
alter table little_mira
add column country varchar(50);

#Removing column query
alter table little_mira
drop column country;

#Renaming the table
alter table little_mira
rename to my_little_mira;

#Renaming any particular column's name
alter table little_mira
change column country mira_country varchar(50);

#Modify query
alter table little_mira
modify mira_country int;


insert into little_mira
values
(123, "Ms. Mira Gita", 20, 62);

desc little_mira;
select*from little_mira;

#Truncate Table Query (It is use to delete/clear all values/data of the table)
TRUNCATE TABLE little_mira;







