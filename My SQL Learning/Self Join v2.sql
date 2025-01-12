#Self Join 

-- Create the Employee table
CREATE TABLE shaheer_mimi (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(255),
    ManagerID INT
);

-- Insert sample data
INSERT INTO shaheer_mimi
(EmployeeID, EmployeeName, ManagerID)
VALUES
    (1, 'John Doe', NULL),
    (2, 'Jane Smith', 1),
    (3, 'David Lee', 1),
    (4, 'Mary Brown', 2),
    (5, 'James Wilson', 2);

-- Perform a self-join to find employees and their managers
SELECT 
    s.EmployeeName AS Employee,
    m.EmployeeName AS Manager
FROM 
    shaheer_mimi s
JOIN  #We can only give the those columns which have the values in common!!
    shaheer_mimi m ON s.ManagerID = m.EmployeeID;
    
    
    