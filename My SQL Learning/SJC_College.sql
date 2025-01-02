#Creating a sample database to store our college data
#01: table named student
#02: some basic student info like name age city major etc

create database if not exists sjc_college;

use sjc_college;

create table if not exists student(
	STUDENT_ID INT PRIMARY KEY,
	STUDENT_NAME VARCHAR(50) NOT NULL,
    STUDENT_AGE INT NOT NULL,
    STUDENT_CITY VARCHAR(50) NOT NULL,
    STUDENT_MAJOR VARCHAR(50) NOT NULL
);



INSERT INTO student 
VALUES 
(1001, "Shaheer Jamal", 18, "Karachi", "CyberSecurity"),
(1002, "Abdul Basit", 14, "Karachi", "Business"),
(1003, "Qarsam Mishkat", 16, "Karachi", "Medical");

select STUDENT_ID,STUDENT_NAME from student;
select distinct STUDENT_CITY from student;
select*from student;