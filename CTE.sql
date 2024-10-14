WITH cte_HoursOfStudy AS (
SELECT
--CONCAT(s.FirstName, ' ', s.LastName) AS Student,
s.StudentID,
SUM(c.DorationHours) AS HoursOfStudy
FROM Courses c
JOIN CoursexStudent cxs ON c.CourseID = cxs.CourseID
JOIN Students s ON cxs.StudentID = s.StudentID
GROUP BY s.StudentID
)
SELECT StudentID, HoursOfStudy
FROM cte_HoursOfStudy
WHERE HoursOfStudy > 100