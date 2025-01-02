#Here in this block we are creating a table 
create table Student(
	name varchar(50),
	student_id int primary key,
	grade int,
	major varchar(50),
	age int not null
);

create table if not exists class(
	class_id int primary key,
	class_name varchar(50),
    class_teacher varchar(70),
    class_student int not null
);

create table if not exists Mari(

	girl_name varchar(50),  #mari
    girl_age int not null,  #20
    girl_job varchar(100)	#Doctor
);

#I wanna change the value of the job
#Lets see how am i gonna do that

#insert into Mari values("Marium", 20, "Doctor");

#lets change the value of job
update mari set get_job = "Engineer" where girl_name = "Marium"; 

show tables;
select * from Mari;
select * from class;


#creating a new test table
create table if not exists Test_Table(
	student_id int primary key,
    student_name varchar(50),
    student_age int not null,
    student_class int not null
);

insert into Test_Table values(125, "Shaheer Jamal", 18, 13);
select * from Test_Table;


#Creating a table and entering two values in it
create table if not exists class_10(
	student_rollno int primary key,
    student_name varchar(50),
    student_major varchar(50)
);

insert into class_10(student_name, student_rollno) values("ShaheerJamal", 100), ("AbdulBasit", 110);
select*from class_10;


create table if not exists karachi(
	pcode int primary key,
    area varchar(50),
    district varchar(50)
);

#Also a way to insert values 
insert into karachi
(district, area, pcode) 
values
("Central", "Federal B Area", 11001),
("Central", "North Nazimabad", 11002),
("South", "Clifton", 12001),
("South", "DHA", 12002),
("North", "Surjani Town", 10001),
("North", "North/New Karachi Town", 10002);

insert into karachi 
(district, area, pcode)
values
("East", "Gulshan e Iqbal", 9999);

insert into karachi 
(district, area, pcode)
values
("West", "Korangi", 9998);


insert into karachi values(112233, "Malir Cantt", "Army surveillance");

select*from karachi


















