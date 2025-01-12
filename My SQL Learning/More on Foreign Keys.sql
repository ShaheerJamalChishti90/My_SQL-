#Revisiting Foreign Keys:

#Step 01 #Parent Table 
#This will refernced its column with the another table thats why its call the Parent table
create table if not exists department(
	DEPARTMENT_ID varchar(50) PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR(50)
);

#This will be called the child table bcs its using the foreign key to link with another table
#Step 02 #Child Table
create table if not exists teachers(
	ID int primary key,
    NAME varchar(50), 
    TEACHER_DEPT varchar(50),
    TEACHER_DEPT_ID varchar(50),
    FOREIGN KEY(TEACHER_DEPT_ID) REFERENCES department(DEPARTMENT_ID)
);

#Step 03
INSERT INTO department 
(DEPARTMENT_ID, DEPARTMENT_NAME) 
VALUES
    ('AP01', 'Applied Physics'),
    ('AM01', 'Applied Mathematics'),
    ('CS01', 'Computer Science'),
    ('EE01', 'Electrical Engineering'),
    ('CE01', 'Civil Engineering');

#Step 04
INSERT INTO teachers #Child 
(ID, Name, TEACHER_DEPT, TEACHER_DEPT_ID) 
VALUES
    (1, 'John Doe', 'Applied Physics', 'AP01'),
    (2, 'Jane Smith', 'Applied Physics', 'AP01'),
    (3, 'David Lee', 'Applied Physics', 'AP01'),
    (4, 'Sarah Jones', 'Applied Physics', 'AP01'),
    (5, 'Michael Brown', 'Applied Physics', 'AP01'),
    (6, 'Emily Davis', 'Applied Mathematics', 'AM01'),
    (7, 'Daniel Wilson', 'Applied Mathematics', 'AM01'),
    (8, 'Christopher Martin', 'Applied Mathematics', 'AM01'),
    (9, 'Amanda Clark', 'Applied Mathematics', 'AM01'),
    (10, 'James Taylor', 'Applied Mathematics', 'AM01'),
    (11, 'Jennifer Lopez', 'Computer Science', 'CS01'),
    (12, 'Robert Downey Jr.', 'Computer Science', 'CS01'),
    (13, 'Scarlett Johansson', 'Computer Science', 'CS01'),
    (14, 'Chris Evans', 'Computer Science', 'CS01'),
    (15, 'Mark Ruffalo', 'Computer Science', 'CS01'),
    (16, 'Ben Affleck', 'Electrical Engineering', 'EE01'),
    (17, 'Henry Cavill', 'Electrical Engineering', 'EE01'),
    (18, 'Gal Gadot', 'Electrical Engineering', 'EE01'),
    (19, 'Jason Momoa', 'Electrical Engineering', 'EE01'),
    (20, 'Dwayne Johnson', 'Civil Engineering', 'CE01');


#Getting the whole table
SELECT * FROM TEACHERS;


#Getting the data of CS Teachers
select * 
from teachers
where TEACHER_DEPT = "Computer Science";