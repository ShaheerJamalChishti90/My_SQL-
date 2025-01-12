#fetch the name and the dept name of the emoployees only they belong too
# there must be a particular column in both tables you wanna join
# inner join or join means the same



SELECT * FROM Dept;
SELECT * FROM Manager;
SELECT * FROM Employee;
SELECT * FROM Project;


#Structure of Inner Join:
select e.name, d.name
from Employee e
join Dept d on e.Dept_ID = d.ID;







