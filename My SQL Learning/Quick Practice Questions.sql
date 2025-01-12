#Question: In the mimi_school table:
# change the name of the column "name" to the "full name"
# delete all the students who scored marks less than 80
# delete the column for grades

create table if not exists mimi_school(
	RollNumber int primary key, 
    Name varchar(50), 
    Grade varchar(50), 
    Marks int, 
    City varchar(50)
);

INSERT INTO mimi_school 
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
    (10, 'Jack', 'C', 58, 'Sydney');
    
    
#change the name of the column "name" to the "full name"
alter table mimi_school
change column name full_name varchar(50);

#delete all the students who scored marks less than 80
delete 
from mimi_school
where marks < 80;

#delete the column for grade
alter table mimi_school
drop column grade;



desc mimi_school;
select*from mimi_school;



#if you want to turn off the safe mode you write 0 in the end
set sql_safe_updates = 0;
#if you want to turn on the safe mode back you can write 1 in the end
set sql_safe_updates = 1;



















































