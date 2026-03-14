-- ============================================
-- Topic: SQL Subqueries
-- Description: Examples of subqueries in SQL
-- ============================================

-- Step 1: Create Employees table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Step 2: Insert sample data
INSERT INTO Employees VALUES
(1, 'Rahul', 'IT', 60000),
(2, 'Priya', 'HR', 45000),
(3, 'Amit', 'Finance', 70000),
(4, 'Sneha', 'IT', 65000),
(5, 'Rohan', 'Marketing', 40000);

-- ============================================
-- 1. Subquery in WHERE clause
-- Find employees whose salary is greater than
-- the average salary of all employees
-- ============================================

SELECT emp_name, salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);

-- ============================================
-- 2. Subquery using IN
-- Find employees who work in departments
-- where salary is greater than 60000
-- ============================================

SELECT emp_name, department
FROM Employees
WHERE department IN (
    SELECT department
    FROM Employees
    WHERE salary > 60000
);

-- ============================================
-- 3. Subquery using EXISTS
-- Check if there are employees in IT department
-- ============================================

SELECT emp_name
FROM Employees e
WHERE EXISTS (
    SELECT 1
    FROM Employees
    WHERE department = 'IT'
);

-- ============================================
-- 4. Subquery in SELECT clause
-- Show employee name and average salary
-- ============================================

SELECT emp_name,
(
    SELECT AVG(salary)
    FROM Employees
) AS average_salary
FROM Employees;

-- ============================================
-- 5. Subquery with MAX
-- Find employee who has highest salary
-- ============================================

SELECT emp_name, salary
FROM Employees
WHERE salary = (
    SELECT MAX(salary)
    FROM Employees
);
