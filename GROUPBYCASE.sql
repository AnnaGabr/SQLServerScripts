-- GROUP BY

SELECT
StudentID,
COUNT(*) AS NUmberCoursesPerStudent
FROM CoursexStudent
GROUP BY StudentID

SELECT
CourseID,
COUNT(*) AS NumberStudentsPerCourses
FROM CoursexStudent
GROUP BY CourseID

SELECT
CourseID,
COUNT(*) AS NumberStudentsPerCourses
FROM CoursexStudent
GROUP BY CourseID
HAVING COUNT(*) > 3

-- CASE

SELECT FirstName,
CASE WHEN Age BETWEEN 18 AND 20
THEN 'Team A'
ELSE 'Team B'
END
FROM Students

SELECT FirstName,
CASE WHEN Age BETWEEN 18 AND 20
THEN 'Team A'
WHEN Age BETWEEN 20 AND 25
THEN 'Team B'
ELSE 'Team C'
END
FROM Students

-- Cuantos cursos tiene cada estudiante
SELECT StudentID, COUNT(*)
FROM CoursexStudent
GROUP BY StudentID

-- Cuantos cursos tiene cada curso
SELECT CourseID, COUNT(*)
FROM CoursexStudent
GROUP BY CourseID

-- Qué cursos tienen más de 3 estudiantes+
SELECT CourseID, COUNT(*)
FROM CoursexStudent
GROUP BY CourseID
HAVING COUNT(*) > 3
