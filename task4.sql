-- 1. Create Database
CREATE DATABASE IF NOT EXISTS ajay11;

-- 2. Use the Database
USE ajay11;

-- 3. Drop Table if it exists (optional but safe for reruns)
DROP TABLE IF EXISTS Employees;

-- 4. Create the Employees Table
CREATE TABLE Employees (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(30) NOT NULL,
    Department VARCHAR(20),
    Salary INT
);

-- 5. Insert Sample Data
INSERT INTO Employees (Emp_ID, Emp_Name, Department, Salary)
VALUES
(1, 'AJAY', 'Finance', 50000),
(2, 'ATUL', 'HR', 45000),
(3, 'RUTURAJ', 'Finance', 52000),
(4, 'SAMRUDDHI', 'IT', 60000),
(5, 'PRASHANT', 'IT', 58000),
(6, 'SHIVAM', 'HR', 47000);

-- 6. Total Salary by Department
SELECT Department, SUM(Salary) AS Total_Salary
FROM Employees
GROUP BY Department;

-- 7. Count of Employees per Department
SELECT Department, COUNT(*) AS Number_of_Employees
FROM Employees
GROUP BY Department;

-- 8. Average Salary per Department
SELECT Department, AVG(Salary) AS Average_Salary
FROM Employees
GROUP BY Department;

-- 9. Combined Aggregation
SELECT Department,
       COUNT(*) AS Employee_Count,
       SUM(Salary) AS Total_Salary,
       AVG(Salary) AS Avg_Salary
FROM Employees
GROUP BY Department;

