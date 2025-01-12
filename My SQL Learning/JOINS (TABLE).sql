#Joins in SQL

-- Create the Dept table
CREATE TABLE Dept (
    ID INT PRIMARY KEY,
    Name VARCHAR(50)
);

-- Insert values into the Dept table
INSERT INTO Dept (ID, Name) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing'),
(8, 'Social Media Managment'),
(9 , 'Logistics');

INSERT INTO Dept (ID, Name) VALUES
(10, 'Mimi Office');

-- Create the Manager table
CREATE TABLE Manager (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Dept(ID)
);

-- Insert values into the Manager table
INSERT INTO Manager (ID, Name, Dept_ID) VALUES
(1, 'Alice', 1),
(2, 'Bob', 2),
(3, 'Charlie', 3),
(4, 'Diana', 4),
(5, 'Adam', 5),
(6, 'Noah', 6),
(7, 'Adriana', 7);


-- Create the Employee table
CREATE TABLE Employee (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary DECIMAL(10, 2),
    Dept_ID INT,
    Manager_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Dept(ID),
    FOREIGN KEY (Manager_ID) REFERENCES Manager(ID)
);

-- Insert values into the Employee table
INSERT INTO Employee (ID, Name, Salary, Dept_ID, Manager_ID) VALUES
(1, 'Eve', 50000.00, 1, 1),
(2, 'Frank', 60000.00, 2, 2),
(3, 'Grace', 55000.00, 3, 3),
(4, 'Hank', 52000.00, 1, 1),
(5, 'Ivy', 62000.00, 4, 4),
(6, 'Jack', 48000.00, 3, 3),
(7, 'Jackson', 55000.00, 6, 6),
(8, 'Tim', 40000.00, 5, 5),
(9, 'Lucy', 25000.00, 7, 7),
(10, 'Harper', 35000.00, 3, 3),
(11, 'Noah', 55000.00, 7, 7);


-- Create the Project table
CREATE TABLE Project (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Team_Member_ID INT,
    FOREIGN KEY (Team_Member_ID) REFERENCES Employee(ID)
);

-- Insert values into the Project table
INSERT INTO Project (ID, Name, Team_Member_ID) VALUES
(1, 'Project Alpha', 1),
(2, 'Project Beta', 2),
(3, 'Project Gamma', 3),
(4, 'Project Delta', 4),
(5, 'Project Epsilon', 5);

SELECT * FROM Dept;
SELECT * FROM Manager;
SELECT * FROM Employee;
SELECT * FROM Project;


