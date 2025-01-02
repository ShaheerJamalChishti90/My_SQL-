#Learning SELECT METHOD in detail
#Learning WHERE COMMAND in detail

#using * to show all the values

create database learning_select;
use learning_select;
create table family(
	RELATION varchar(50) primary key,
	NAME varchar(50) not null,
	AGE int not null
);

insert into family
(RELATION, NAME, AGE)
values
("Grandfather", "David Johnson", 78),
("Father", "Larry Johnson", 45),
("Mother", "Sarah L Johnson", 43),
("Son", "Sean L Johnson", 16),
("Daughter", "Micaas L Johnson", 14);


select*from family; #by using * we can print all the values of the table
select NAME from family; #by doing this we can print all the names of the family member
select distinct name from family; #this distinct command show only the unique values of the column



#Create the students table
CREATE TABLE students (
    Roll_Number INT PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    AGE INT NOT NULL,
    MAJOR VARCHAR(50) NOT NULL,
    MARKS INT NOT NULL,
    CITY VARCHAR(50) NOT NULL
);

#Insert data into the students table
INSERT INTO students 
(roll_number, name, age, major, marks, city)
VALUES
(1, 'Ali Khan', 16, 'Science', 980, 'Karachi'),
(2, 'Sara Ahmed', 17, 'Arts', 870, 'Lahore'),
(3, 'Usman Ali', 15, 'Commerce', 920, 'Faisalabad'),
(4, 'Fatima Noor', 16, 'Science', 950, 'Hyderabad'),
(5, 'Ahsan Raza', 17, 'Science', 880, 'Rawalpindi'),
(6, 'Zara Iqbal', 16, 'Arts', 890, 'Multan'),
(7, 'Hamza Tariq', 15, 'Commerce', 910, 'Sialkot'),
(8, 'Mariam Khan', 17, 'Science', 960, 'Islamabad'),
(9, 'Bilal Shah', 16, 'Commerce', 870, 'Peshawar'),
(10, 'Hina Malik', 15, 'Arts', 940, 'Quetta'),
(11, 'Ahmed Junaid', 16, 'Science', 970, 'Sukkur'),
(12, 'Sana Tariq', 17, 'Arts', 860, 'Bahawalpur'),
(13, 'Waleed Asghar', 15, 'Commerce', 900, 'Gujranwala'),
(14, 'Aisha Ali', 16, 'Science', 930, 'Sheikhupura'),
(15, 'Moiz Anwar', 17, 'Commerce', 940, 'Sargodha'),
(16, 'Iqra Shafiq', 16, 'Science', 980, 'Kasur'),
(17, 'Raza Hussain', 15, 'Arts', 890, 'Okara'),
(18, 'Nida Saleem', 16, 'Science', 950, 'Jhang'),
(19, 'Tariq Mahmood', 17, 'Commerce', 920, 'Rahim Yar Khan'),
(20, 'Anam Yousaf', 16, 'Arts', 910, 'Mardan');

SELECT *
FROM students
where marks > 900;

SELECT 
Roll_Number, NAME, MARKS, CITY 
from students 
where marks > 950;  


-- Create the class_10_students table
CREATE TABLE class_10_students (
    roll_number INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    major VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

-- Insert data into the class_10_students table
INSERT INTO class_10_students (roll_number, name, age, major, marks, city)
VALUES
(1, 'Ahmed Riaz', 16, 'Science', 910, 'Karachi'),
(2, 'Sana Khalid', 15, 'Science', 940, 'Karachi'),
(3, 'Fahad Hussain', 16, 'Commerce', 890, 'Lahore'),
(4, 'Ayesha Ali', 15, 'Arts', 850, 'Lahore'),
(5, 'Hamza Anwar', 16, 'Science', 900, 'Islamabad'),
(6, 'Mina Tariq', 15, 'Commerce', 870, 'Islamabad'),
(7, 'Zayan Malik', 16, 'Science', 930, 'Hyderabad'),
(8, 'Hira Shah', 15, 'Arts', 920, 'Hyderabad'),
(9, 'Osman Javed', 16, 'Commerce', 880, 'Karachi'),
(10, 'Iqra Farooq', 15, 'Arts', 860, 'Lahore');


#Learning OPERATORS:
#arithmetic 
#relational
#logical

#learning and + or operator
select *
from class_10_students
where marks > 920 and city = "karachi" or  city = 'lahore';

#learning relational and arithmetic operator
select * 
from class_10_students
where  marks-10 >= 920;

#learning between operator
select *
from class_10_students
where marks between 890 and 900;

#learning in operator
select *
from class_10_students
where city in ("karachi", "lahore") and marks > 900;


#learning not in operator
select *
from class_10_students
where city not in ("karachi", "lahore", "islamabad");

#learning limit clause
select *
from class_10_students
where marks > 850 and city = "lahore"
limit 3;


#learning order by caluse (we are getting the highest marks of the students here)
select * 
from class_10_students
order by marks desc
limit 3;


