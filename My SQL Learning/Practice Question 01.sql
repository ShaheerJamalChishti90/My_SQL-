#write a query to find average marks in each city in ascending order

create table class(
	ROLLNO int primary key,
    NAME varchar(50) not null,
    MARKS int not null,
    CITY varchar(50) not null
);

INSERT INTO class (ROLLNO, NAME, MARKS, CITY) VALUES
    (1, 'Ali Ahmed', 85, 'Karachi'),
    (2, 'Sara Khan', 92, 'Lahore'),
    (3, 'Zain Khan', 78, 'Islamabad'),
    (4, 'Ayesha Malik', 90, 'Karachi'),
    (5, 'Hamza Ali', 88, 'Lahore'),
    (6, 'Zara Khan', 75, 'Islamabad'),
    (7, 'Usman Khan', 95, 'Karachi'),
    (8, 'Fatima Ali', 80, 'Lahore'),
    (9, 'Ahmed Khan', 82, 'Islamabad'),
    (10, 'Areeba Khan', 91, 'Karachi'),
    (11, 'Bilal Khan', 79, 'Lahore'),
    (12, 'Sana Khan', 86, 'Islamabad'),
    (13, 'Shayan Khan', 93, 'Karachi'),
    (14, 'Mahira Khan', 84, 'Lahore'),
    (15, 'Arham Khan', 77, 'Islamabad'),
    (16, 'Noor Khan', 94, 'Karachi'),
    (17, 'Hania Khan', 81, 'Lahore'),
    (18, 'Saad Khan', 83, 'Islamabad'),
    (19, 'Aiman Khan', 96, 'Karachi'),
    (20, 'Talha Khan', 87, 'Lahore'),
    (21, 'Laiba Khan', 76, 'Islamabad'),
    (22, 'Muneeb Khan', 97, 'Karachi'),
    (23, 'Kinza Khan', 89, 'Lahore'),
    (24, 'Haris Khan', 74, 'Islamabad'),
    (25, 'Maryam Khan', 98, 'Karachi'),
    (26, 'Zainab Khan', 90, 'Lahore'),
    (27, 'Hammad Khan', 73, 'Islamabad'),
    (28, 'Hoorain Khan', 99, 'Karachi'),
    (29, 'Shahmeer Khan', 85, 'Lahore'),
    (30, 'Emaan Khan', 72, 'Islamabad'),
    (31, 'Shayan Khan', 100, 'Karachi'),
    (32, 'Arisha Khan', 91, 'Lahore'),
    (33, 'Hamza Khan', 71, 'Islamabad'),
    (34, 'Areeba Khan', 92, 'Karachi'),
    (35, 'Bilal Khan', 93, 'Lahore'),
    (36, 'Sana Khan', 94, 'Islamabad'),
    (37, 'Shayan Khan', 95, 'Karachi'),
    (38, 'Mahira Khan', 96, 'Lahore'),
    (39, 'Arham Khan', 97, 'Islamabad'),
    (40, 'Noor Khan', 98, 'Karachi'),
    (41, 'Hania Khan', 99, 'Lahore'),
    (42, 'Saad Khan', 100, 'Islamabad'),
    (43, 'Aiman Khan', 91, 'Karachi'),
    (44, 'Talha Khan', 92, 'Lahore'),
    (45, 'Laiba Khan', 93, 'Islamabad'),
    (46, 'Muneeb Khan', 94, 'Karachi'),
    (47, 'Kinza Khan', 95, 'Lahore'),
    (48, 'Haris Khan', 96, 'Islamabad'),
    (49, 'Maryam Khan', 97, 'Karachi'),
    (50, 'Zainab Khan', 98, 'Lahore');
    
#first im checking that how many students are there from each city
select city, count(name) 
from class
group by city;

#here just taking the average of marks of student of each city
select city, avg(marks)
from class
group by city;
    
#here getting the average of marks in ascending order
select city, avg(marks)
from class
group by city
order by avg(marks) asc;

