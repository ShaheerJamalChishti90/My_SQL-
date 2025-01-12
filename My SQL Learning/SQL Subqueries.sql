create table if not exists mimi_class_room(
	rollno int primary key,
    name varchar(50),
    marks int
);

insert into mimi_class_room
values
(101, "Mira", 98),
(102, "Mimi", 50),
(103, "Aisyah", 68),
(104, "Marium", 75),
(105, "Falaq", 78),
(106, "Syaz", 89);

select avg(marks) from mimi_class_room;

SELECT name, marks
FROM mimi_class_room
WHERE marks > (SELECT avg(marks) from mimi_class_room);
#76.3333


