#Full Outter Join

select *
from Employee e
left join Dept d
on e.Dept_ID = d.ID

union

select *
from Employee e
right join Dept d
on e.Dept_ID = d.ID