create table if not exists international_school(
	RollNumber int primary key, 
    Name varchar(50), 
    Grade varchar(50), 
    Marks int, 
    City varchar(50)
);

INSERT INTO international_school 
(RollNumber, Name, Grade, Marks, City) 
VALUES
    (1, 'Alice', 'A+', 95, 'New York'),
    (2, 'Bob', 'B', 78, 'London'),
    (3, 'Charlie', 'C', 62, 'Paris'),
    (4, 'David', 'A', 88, 'Tokyo'),
    (5, 'Eve', 'B+', 82, 'Sydney'),
    (6, 'Frank', 'C+', 68, 'New York'),
    (7, 'Grace', 'A', 85, 'London'),
    (8, 'Henry', 'B', 72, 'Paris'),
    (9, 'Isaac', 'A+', 92, 'Tokyo'),
    (10, 'Jack', 'C', 58, 'Sydney'),
    (11, 'Kate', 'B+', 80, 'New York'),
    (12, 'Liam', 'A', 87, 'London'),
    (13, 'Mia', 'B', 75, 'Paris'),
    (14, 'Noah', 'C+', 65, 'Tokyo'),
    (15, 'Olivia', 'A+', 98, 'Sydney'),
    (16, 'Penelope', 'B', 70, 'New York'),
    (17, 'Quinn', 'C', 60, 'London'),
    (18, 'Roman', 'A', 89, 'Paris'),
    (19, 'Sophia', 'B+', 83, 'Tokyo'),
    (20, 'Thomas', 'C+', 67, 'Sydney');
    
#checking how many students are there from each city
select city, count(name)
from international_school
group by city;

#Just checking the grades of each student
select Name, grade
from international_school
group by name, grade;

#Checking how many students got what grade
select grade, count(grade)
from international_school
group by grade
order by grade asc;

#checking what the average of marks from each city
select city,avg(marks)
from international_school
group by city
order by avg(marks) desc;

#checking how much marks the students from london scored
select city, marks
from international_school 
where city = "London"
group by city, marks
order by marks desc;

#just getting the marks of those students who scored more than 90 from each city
select city, marks
from international_school
where marks >= 90 
group by city, marks;

#checking number of students in cities where max marks are more than 90
select city, count(name)
from international_school
group by city
having max(marks) > 90;

#This is the GENERAL ORDER/SYNTAX of SQL Code
select name, city, marks
from international_school
where marks > 50
group by name, city, marks
order by marks desc;


select * 
from international_school;




