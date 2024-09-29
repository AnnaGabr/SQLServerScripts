UPDATE CoursexStudent
SET EnrollmentDate = GETDATE()
WHERE CoursexStundentID = 1

ALTER TABLE Instructors
ADD Salary INT

CREATE TABLE Reviews (
ReviewID INT IDENTITY PRIMARY KEY,
StudentID INT,
CourseID INT,
Review TEXT,
FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Actualizar los datos de ejemplo para la columna Salary (siendo INT)
UPDATE Instructors
SET Salary = CASE InstructorID
                WHEN 1 THEN 60000   -- Marye Jane
                WHEN 2 THEN 65000   -- Carolina Rosales
                WHEN 3 THEN 70000   -- Mauricio Calderon
                WHEN 4 THEN 55000   -- Ana Martínez
                WHEN 5 THEN 60000   -- Diego García
             END;

-- Verificar que los datos se hayan actualizado correctamente
SELECT * FROM Instructors;