#Learning how to use UPDATE clause
#It basically works on the rows

create table if not exists int_college(
	RollNumber int primary key, 
    Name varchar(50), 
    Grade varchar(50), 
    Marks int, 
    City varchar(50)
);

INSERT INTO int_college 
(RollNumber, Name, Grade, Marks, City) 
VALUES
    (1, 'Alice', 'A+', 95, 'New York'),
    (2, 'Bob', 'B', 78, 'London'),
    (3, 'Charlie', 'C', 62, 'Paris'),
    (4, 'David', 'A', 88, 'Tokyo'),
    (5, 'Eve', 'B+', 82, 'Sydney');

#By doing this i can turn off the safe mode of sql, just change 0 to 1 to enable the safe mode again
set sql_safe_updates = 0;


#Chaning the bob's name to Bakura
update int_college
set name = "Bakura"
where name = "Bob";

#Updating the marks on Roll Number 3
update int_college
set marks = 89, grade = "B"
where RollNumber = 3;

#Changing the marks of all students
update int_college
set marks = marks + 1;


#Updating the grade of the students where marks are greater or equal to 90
update int_college
set grade = "A"
where marks >= 90;

#Updating the grade  to B of the students where marks are less than 90
update int_college
set grade = "B+"
where marks < 90 and marks > 85;

update int_college
set grade = "A+"
where marks >= 95;

#I can also use the delete operation like this:
delete 
from int_college
where marks < 10;


select * from int_college;























































