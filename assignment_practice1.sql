

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50) NOT NULL,
    Department VARCHAR(50),
    JobTitle VARCHAR(50),
    Salary INT,
    JoiningYear INT
);


INSERT INTO Employees
    (EmployeeID, EmployeeName, Department, JobTitle, Salary, JoiningYear)


VALUES
    (1, 'Aarav Shah', 'HR', 'HR Executive', 45000, 2022),
    (2, 'Riya Patel', 'Finance', 'Accountant', 55000, 2021),
    (3, 'Arjun Mehta', 'IT', 'Software Developer', 75000, 2023),
    (4, 'Siya Desai', 'Marketing', 'Marketing Executive', 50000, 2022),
    (5, 'Kabir Joshi', 'IT', 'Data Analyst', 65000, 2021),
    (6, 'Anaya Rao', 'HR', 'HR Manager', 70000, 2020),
    (7, 'Vivaan Shah', 'Finance', 'Financial Analyst', 60000, 2023),
    (8, 'Meera Patel', 'IT', 'Database Administrator', 80000, 2019),
    (9, 'Aditya Singh', 'Marketing', 'Marketing Manager', 72000, 2020),
    (10, 'Tara Kapoor', 'Finance', 'Finance Manager', 85000, 2018);

    SELECT * FROM Employees;

    SELECT
    EmployeeName,
    Department,
    JobTitle,
    Salary
FROM Employees
WHERE Salary > 60000
ORDER BY Salary DESC;

SELECT
    Department,
    COUNT(*) AS Employee_Count,
    AVG(Salary) AS Average_Salary,
    MAX(Salary) AS Highest_Salary,
    MIN(Salary) AS Lowest_Salary
FROM Employees
GROUP BY Department
ORDER BY Average_Salary DESC;

SELECT
    EmployeeName,
    Department,
    JobTitle,
    Salary
FROM Employees
WHERE Salary = (
    SELECT MAX(Salary)
    FROM Employees 
    );

    SELECT
    Department,
    COUNT(*) AS Employee_Count
FROM Employees
GROUP BY Department
ORDER BY Employee_Count DESC;

SELECT
    EmployeeName,
    Salary,
    CASE
        WHEN Salary >= 75000 THEN 'High Salary'
        WHEN Salary >= 55000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS Salary_Category
FROM Employees
ORDER BY Salary DESC;