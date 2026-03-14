-- ============================================
-- Topic: SQL FUNCTIONS
-- Description: Demonstration of common SQL functions
-- ============================================

-- Step 1: Create a sample table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    joining_date DATE
);

-- Step 2: Insert sample data
INSERT INTO Employees VALUES
(1, 'Rahul', 'IT', 50000, '2022-01-15'),
(2, 'Priya', 'HR', 42000, '2021-03-10'),
(3, 'Amit', 'Finance', 60000, '2020-07-18'),
(4, 'Sneha', 'IT', 55000, '2023-02-05'),
(5, 'Rohan', 'Marketing', 45000, '2021-11-22');

-- ============================================
-- 1. Aggregate Functions
-- ============================================

-- Find total employees
SELECT COUNT(*) AS total_employees FROM Employees;

-- Find average salary
SELECT AVG(salary) AS average_salary FROM Employees;

-- Find maximum salary
SELECT MAX(salary) AS highest_salary FROM Employees;

-- Find minimum salary
SELECT MIN(salary) AS lowest_salary FROM Employees;

-- Find total salary
SELECT SUM(salary) AS total_salary FROM Employees;


-- ============================================
-- 2. String Functions
-- ============================================

-- Convert name to uppercase
SELECT UPPER(emp_name) FROM Employees;

-- Convert name to lowercase
SELECT LOWER(emp_name) FROM Employees;

-- Find length of employee name
SELECT emp_name, LENGTH(emp_name) FROM Employees;

-- Combine strings
SELECT CONCAT(emp_name, ' works in ', department) AS employee_info
FROM Employees;


-- ============================================
-- 3. Numeric Functions
-- ============================================

-- Round a number
SELECT ROUND(123.456, 2);

-- Absolute value
SELECT ABS(-500);

-- Ceiling function
SELECT CEILING(45.2);

-- Floor function
SELECT FLOOR(45.9);


-- ============================================
-- 4. Date Functions
-- ============================================

-- Current date
SELECT CURDATE();

-- Current date and time
SELECT NOW();

-- Extract year from joining date
SELECT emp_name, YEAR(joining_date) FROM Employees;

-- Extract month from joining date
SELECT emp_name, MONTH(joining_date) FROM Employees;


-- ============================================
-- 5. NULL Handling Functions
-- ============================================

-- Create a table with NULL values
CREATE TABLE TestData (
    id INT,
    name VARCHAR(50),
    bonus INT
);

INSERT INTO TestData VALUES
(1, 'Rahul', NULL),
(2, 'Amit', 5000);

-- Replace NULL with value
SELECT name, IFNULL(bonus, 0) AS bonus_amount
FROM TestData;
