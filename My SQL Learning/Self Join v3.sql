#Practice Code of self join


create table if not exists my_mimi(
		friend_id varchar(50),
        friend_name varchar(50),
        friend_country varchar(50),
        friends_friend varchar(50)
);

insert into my_mimi
(friend_id, friend_name, friend_country, friends_friend)
values
("F1", "Shaheer", "Pakistan", "F4"),
("F2", "Mirani", "Indonesia", "F3"),
("F3", "Syaz", "Indonesia", "F2"),
("F4", "Mimi", "Indonesia", "F1"),
("F5", "Mariyam", "Indonesia", "F4"),
("F6", "Alex", "USA", ""),
("F7", "Jessica", "UK", ""),
("F8", "Ali", "Somalia", "F7");



select

	s.friend_name as Friend1_Name, s.friend_country as Friend1_Country,
	m.friend_name as Friend2_Name, m.friend_country as Friend2_Country

from my_mimi s
join my_mimi m 

on 
	s.friend_id = m.friends_friend;


