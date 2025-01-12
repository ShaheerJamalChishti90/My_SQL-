#Learning Self Join:


create table if not exists family(
	member_id varchar(50) primary key,
    name varchar(50),
    age int,
    parent_id varchar(50) 
);


insert into family 
(member_id, name, age, parent_id)
values
('F1', "David" , 70, ""),
('F2', "Michael", 40, "F1"),
('F3', "Ana", 38, ""),
('F4', "Noah", 12, "F2"),
('F4', "Sarah", 10, "F2"),
('F5', "Casey", 8, "F2");


insert into family 
(member_id, name, age, parent_id)
values
('F6', "Jessica" , 38, "F1"),
('F7', "MaryLyn" , 10, "F6");

select * from family;


select child.name as CHILD_NAME,
child.age as CHILD_AGE,
parent.name as PARENT_NAME,
parent.age as PARENT_AGE
from family as child
join family as parent on child.parent_id = parent.member_id;
























