-- ============================================
-- Topic: SQL Views
-- Description: Creating and using Views in SQL
-- ============================================

-- Step 1: Create a sample table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Step 2: Insert sample data
INSERT INTO Employees VALUES
(1, 'Rahul', 'IT', 55000),
(2, 'Priya', 'HR', 40000),
(3, 'Amit', 'Finance', 60000),
(4, 'Sneha', 'IT', 65000),
(5, 'Rohan', 'Marketing', 45000);

-- Step 3: Create a Simple View
-- This view shows only employee name and department
CREATE VIEW employee_basic_view AS
SELECT emp_name, department
FROM Employees;

-- Step 4: Display data from the view
SELECT * FROM employee_basic_view;

-- Step 5: Create another View with condition
-- This view shows employees with salary greater than 50000
CREATE VIEW high_salary_view AS
SELECT emp_id, emp_name, salary
FROM Employees
WHERE salary > 50000;

-- Step 6: Display high salary employees
SELECT * FROM high_salary_view;

-- Step 7: Update data through the view
UPDATE employee_basic_view
SET department = 'Admin'
WHERE emp_name = 'Priya';

-- Step 8: Check updated data
SELECT * FROM Employees;

-- Step 9: Drop a View
DROP VIEW high_salary_view;

-- Step 10: Show remaining views
SHOW FULL TABLES WHERE TABLE_TYPE = 'VIEW';
