-- Crear un Index

CREATE INDEX idx_lastname ON Students (LastName)
-- Esto sería útil si la tabla tiene un gran número de registros y se ejecutan consultas frecuentes que buscan estudiantes por su apellido.

-- Crear un trigger

CREATE TRIGGER trg_update_reviews
ON Reviews
AFTER INSERT
AS
BEGIN
	UPDATE Courses
	SET n_reviews = n_reviews + 1
	FROM COURSES
	INNER JOIN inserted ON Courses.CourseID = inserted.CourseID
END;

-- En SQL Server, la tabla inserted es una tabla temporal que contiene los registros recién insertados. En este caso, contiene el nuevo review.

INSERT INTO Reviews (StudentID, CourseID, Review)
VALUES (1, 1, 'Review de prueba');

SELECT * FROM Courses;

SELECT * FROM Instructors;

CREATE TABLE SalaryHistory
(
SalaryHistoryID INT IDENTITY PRIMARY KEY,
InstructorID INT,
OldSalary INT,
NewSalary INT,
ChangeDate DATETIME DEFAULT GETDATE());

CREATE TRIGGER trg_update_salary
ON Intructors
AFTER UPDATE
AS
BEGIN 
	INSERT INTO SalaryHistory
	(InstructorID,
	OldSalary,
	NewSalary)
	SELECT
		deleted.InstructorID AS IntructorID,
		deleted.Salary as OldSalary,
		inserted.Salary as NewSalary
	FROM inserted
	INNER JOIN deleted ON inserted.IntructorID = deleted.IntructorID
	WHERE deleted.Salary <> inserted.Salary;
END;

SELECT * FROM Instructors;

UPDATE Instructors
SET Salary = 75000
WHERE InstructorID = 1;

SELECT * FROM Instructors;

SELECT * FROM SalaryHistory;