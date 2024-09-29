-- Cursos que tienen más de un estudiante inscrito
SELECT CourseID, COUNT(StudentID)
FROM CoursexStudent
GROUP BY CourseID
HAVING COUNT(StudentID) > 1;

-- Metricas 
SELECT 
SUM(Salary) AS TotalSalary,
AVG(Salary) AS AverageSalary
FROM Instructors

SELECT
MIN(Age) AS MinimalAge,
MAX(Age) AS MaximalAge
FROM Students

SELECT
ROUND(Age, 1)
FROM Students