-- ============================================
-- Topic: INDEXES in SQL
-- Description: Creating and using indexes
-- ============================================

-- Step 1: Create a sample table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    marks INT
);

-- Step 2: Insert sample data
INSERT INTO Students VALUES
(1, 'Rahul', 'Computer', 85),
(2, 'Priya', 'Mechanical', 78),
(3, 'Amit', 'Computer', 90),
(4, 'Sneha', 'Electrical', 82),
(5, 'Rohan', 'Computer', 88),
(6, 'Neha', 'Civil', 75);

-- Step 3: Create a Single Column Index
-- This index improves search speed on the 'name' column
CREATE INDEX idx_student_name
ON Students(name);

-- Step 4: Create a Composite Index (multiple columns)
CREATE INDEX idx_dept_marks
ON Students(department, marks);

-- Step 5: Use a query that benefits from the index
SELECT * 
FROM Students
WHERE name = 'Rahul';

-- Step 6: Another query using composite index
SELECT *
FROM Students
WHERE department = 'Computer'
AND marks > 80;

-- Step 7: Show all indexes in the table
SHOW INDEX FROM Students;

-- Step 8: Drop an index
DROP INDEX idx_student_name ON Students;
