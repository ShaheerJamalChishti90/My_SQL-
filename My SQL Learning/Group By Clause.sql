#learning Group By clause

select city, count(roll_number)
from class_10_students 
group by (city);

select name, city
from class_10_students 
group by name, city;


select city, avg(marks)
from class_10_students
group by city;