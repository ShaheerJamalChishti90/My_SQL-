#Learning Cascading for Foreign Keys
#revising the tomorrows topic

-- cascading for me so that you can expalin me tonight around 11 (your time)

#Step 01
create table if not exists mimi(
	id varchar(50) primary key,
    class_name varchar(50) not null,
    teacher_name varchar(50) not null
);
describe mimi;
insert into mimi
values
("P102", "Math", "Sir Bilal"),
("P103", "Science", "Sir Hashim"),
("P104", "Computer", "Sir Zain"),
("P105", "Economic", "Sir Zeeshan");
select*from mimi;

#Step 02
create table if not exists batman(
	id int primary key, 
    mimi_id varchar(50),
    name varchar(50),
	age int
);

#Step 03
alter table batman
add constraint fk_batman_mimi
foreign key(mimi_id) references mimi(id)
on update cascade
on delete cascade;
 
insert into batman
values
(111, "P104", "Shaheer", 22),
(222, "P105", "Mira", 22);


#Step 04 (additional values insertion)
insert into batman
values
(333, "P98", "Mira Gita", 22);

insert into mimi
values
("P98", "MySQL and Python", "Sir Shaheer");

desc batman; 
select*from mimi;
select*from batman;

set sql_safe_updates = 0;

#Step 05 
delete from mimi
where id = "P98";



































