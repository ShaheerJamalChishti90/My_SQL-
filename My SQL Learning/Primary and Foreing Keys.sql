#Checking how primary and foreign keys work when using them in the same table
use pf_keys;
create table if not exists student_info(
	student_id int primary key,
    student_name varchar(50) not null,
    student_rollno int not null,
    student_major varchar(50) not null,
    student_city varchar(50) not null,
    student_cityid int not null,
    foreign key (student_cityid) references city(city_code)
);

create table if not exists city(
	city_code int primary key,
    city_name varchar(50)
);

insert into student_info
values
(100, "Shaheer Jamal", 50, "Cyber Security", "Karachi", 1),
(101, "Abdullah", 51, "BBA", "Karachi", 1),
(102, "Saad", 52, "Computer Science", "Islamabad", 3),
(103, "Abdul Hadi", 53, "BsCS", "Lahore", 2),
(105, "Saad Ahmad", 55, "BsCS", "Quetta", 4),
(104, "Abdul Hadi", 54, "Mass Communication", "Peshawar", 5);


insert into city 
values
(1, "Karachi"),
(2, "Lahore"),
(3, "Islamabad"),
(4, "Quetta"),
(5, "Peshawar");



select * from student_info;