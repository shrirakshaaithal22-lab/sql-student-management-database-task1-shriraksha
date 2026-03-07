-- Create Database
CREATE DATABASE IF NOT EXISTS StudentManagement;
USE StudentManagement;

-- Create Students Table
CREATE TABLE IF NOT EXISTS Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Gender CHAR(1),
    Age INT,
    Grade VARCHAR(2),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

-- Insert Student Data
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES
('Aarav','M',16,'A',88,90,85),
('Diya','F',15,'A',92,89,91),
('Rohan','M',16,'A',75,80,78),
('Ananya','F',15,'A',85,87,90),
('Karan','M',17,'C',65,70,68),
('Meera','F',16,'B',78,82,80),
('Arjun','M',15,'A',90,88,92),
('Sneha','F',16,'C',68,72,70),
('Vikram','M',17,'B',80,76,79),
('Pooja','F',15,'A',95,93,94);

-- Show All Students
SELECT * FROM Students;

-- Average Score in Each Subject
SELECT 
    AVG(MathScore) AS AvgMath,
    AVG(ScienceScore) AS AvgScience,
    AVG(EnglishScore) AS AvgEnglish
FROM Students;

-- Top Performer
SELECT 
    Name,
    (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

-- Count Students Per Grade
SELECT 
    Grade, 
    COUNT(*) AS StudentCount
FROM Students
GROUP BY Grade;

-- Average Score by Gender
SELECT 
    Gender,
    AVG(MathScore) AS AvgMath,
    AVG(ScienceScore) AS AvgScience,
    AVG(EnglishScore) AS AvgEnglish
FROM Students
GROUP BY Gender;

-- Students with Math Score > 80
SELECT 
    Name, 
    MathScore
FROM Students
WHERE MathScore > 80;

-- Update Student Grade
UPDATE Students
SET Grade = 'A'
WHERE Name = 'Rohan';

-- Verify Update
SELECT * 
FROM Students 
WHERE Name = 'Rohan';
