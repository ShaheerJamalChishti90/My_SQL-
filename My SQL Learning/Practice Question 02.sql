#For the given table find the total payment according to each payment method

create table banking(
	CUSTOMER_ID INT PRIMARY KEY,
    CUSTOMER VARCHAR(50) NOT NULL,
    MODE VARCHAR(50) NOT NULL,
    CITY VARCHAR(50) NOT NULL
);

INSERT INTO banking 
(Customer_ID, Customer, Mode, City) 
VALUES
    (1, 'Alice', 'Credit Card', 'New York'),
    (2, 'Bob', 'Debit Card', 'London'),
    (3, 'Charlie', 'Cash', 'Paris'),
    (4, 'David', 'Net Banking', 'Tokyo'),
    (5, 'Eve', 'Credit Card', 'Sydney'),
    (6, 'Frank', 'Cash', 'New York'),
    (7, 'Grace', 'Net Banking', 'London'),
    (8, 'Henry', 'Debit Card', 'Paris'),
    (9, 'Isaac', 'Credit Card', 'Tokyo'),
    (10, 'Jack', 'Cash', 'Sydney'),
    (11, 'Kate', 'Net Banking', 'New York'),
    (12, 'Liam', 'Credit Card', 'London'),
    (13, 'Mia', 'Debit Card', 'Paris'),
    (14, 'Noah', 'Cash', 'Tokyo'),
    (15, 'Olivia', 'Net Banking', 'Sydney'),
    (16, 'Penelope', 'Credit Card', 'New York'),
    (17, 'Quinn', 'Debit Card', 'London'),
    (18, 'Roman', 'Cash', 'Paris'),
    (19, 'Sophia', 'Net Banking', 'Tokyo'),
    (20, 'Thomas', 'Credit Card', 'Sydney'),
    (21, 'Uma', 'Cash', 'New York'),
    (22, 'Victor', 'Debit Card', 'New York'),
    (23, 'Wendy', 'Net Banking', 'London'),
    (24, 'Xavier', 'Cash', 'Paris'),
    (25, 'Yolanda', 'Credit Card', 'Tokyo'),
    (26, 'Zachary', 'Debit Card', 'Sydney'),
    (27, 'Amy', 'Net Banking', 'New York'),
    (28, 'Bernard', 'Cash', 'London'),
    (29, 'Carol', 'Credit Card', 'Paris'),
    (30, 'Daniel', 'Debit Card', 'Tokyo'),
    (31, 'Emily', 'Net Banking', 'Sydney'),
    (32, 'Frank', 'Cash', 'New York'),
    (33, 'George', 'Credit Card', 'London'),
    (34, 'Helen', 'Debit Card', 'Paris'),
    (35, 'Ivan', 'Net Banking', 'Tokyo'),
    (36, 'Judy', 'Cash', 'Sydney'),
    (37, 'Keith', 'Credit Card', 'New York'),
    (38, 'Laura', 'Debit Card', 'London'),
    (39, 'Michael', 'Net Banking', 'Paris'),
    (40, 'Nicole', 'Cash', 'Tokyo'),
    (41, 'Oliver', 'Credit Card', 'Sydney'),
    (42, 'Patricia', 'Debit Card', 'New York'),
    (43, 'Quentin', 'Net Banking', 'London'),
    (44, 'Rachel', 'Cash', 'Paris'),
    (45, 'Stephen', 'Credit Card', 'Tokyo'),
    (46, 'Timothy', 'Debit Card', 'Sydney'),
    (47, 'Ursula', 'Net Banking', 'New York'),
    (48, 'Victor', 'Cash', 'London'),
    (49, 'Wendy', 'Credit Card', 'Paris'),
    (50, 'Xavier', 'Debit Card', 'Tokyo');
    
#First im finding that how many people are there from each city
select city, count(customer)
from banking 
group by city;

#Now im finding what payment method have been used by how many people
select mode, count(customer)
from banking 
group by mode;



