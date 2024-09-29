CREATE VIEW Vw_Students AS
SELECT * FROM Students;

CREATE OR REPLACE VIEW Vw_Students AS
SELECT 
StudentID,
FirstName,
LastName
FROM Students;

DROP VIEW VW_Students

-- Ejercicios

CREATE VIEW Vw_InfoCourses AS
SELECT
Courses.CourseName,
CONCAT(Instructors.FirstName,' ',Instructors.LastName) AS Instructor,
NumberStudentsxCourse.NumberStudents
FROM Courses
LEFT JOIN Instructors
ON Courses.InstructorID = Instructors.InstructorID
LEFT JOIN (SELECT CourseID,
	COUNT(*) AS NumberStudents
	FROM CoursexStudent
	GROUP BY CourseID
	) AS NumberStudentsxCourse
ON Courses.CourseID = NumberStudentsxCourse.CourseID

CREATE VIEW Vw_NumberStudentsxCourse AS
SELECT CourseID,
COUNT(*) AS NumberStudents
FROM CoursexStudent
GROUP BY CourseID