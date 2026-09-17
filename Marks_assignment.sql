CREATE DATABASE StudentPerformanceDB;

USE StudentPerformanceDB;

CREATE TABLE StudentGrades
(
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50) NOT NULL,
    Age INT,
    Grade VARCHAR(5)
);

INSERT INTO StudentGrades
    (StudentID, StudentName, Age, Grade)
VALUES
    (1, 'Rahul', 16, 'A'),
    (2, 'Priya', 14, 'B'),
    (3, 'Amit', 17, 'C'),
    (4, 'Neha', 15, 'A'),
    (5, 'Rohan', 16, 'B'),
    (6, 'Anjali', 14, 'A'),
    (7, 'Karan', 17, 'B'),
    (8, 'Pooja', 15, 'C'),
    (9, 'Vikas', 16, 'A'),
    (10, 'Sneha', 14, 'B');

    SELECT * FROM StudentGrades;


    USE StudentPerformanceDB;

ALTER TABLE StudentGrades
ADD Subject VARCHAR(50),
    Marks INT;

    UPDATE StudentGrades
SET
    Subject = 'Mathematics',
    Marks = CASE
        WHEN Grade = 'A' THEN 90
        WHEN Grade = 'B' THEN 75
        WHEN Grade = 'C' THEN 60
    END;

    SELECT
    StudentID,
    StudentName,
    Subject,
    Marks
FROM StudentGrades
WHERE Marks > 75
ORDER BY Marks DESC;

