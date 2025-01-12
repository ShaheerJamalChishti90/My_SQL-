#Left Join
#Fetch all the employee and their Departments names they belong too

SELECT * FROM Dept;
SELECT * FROM Manager;
SELECT * FROM Employee;
SELECT * FROM Project;

#Structure of Left Join:
select e.name, d.name
from Employee e left join Dept d on e.Dept_ID = d.ID;

#Right Join
#Fetch all the employee and their Departments names they belong too

select e.name, d.name
from Employee e right join Dept d on e.Dept_ID = d.ID;


select e.name, d.name
from Employee e full JOIN Dept d on e.Dept_ID = d.ID;
