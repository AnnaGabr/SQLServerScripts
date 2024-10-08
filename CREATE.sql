CREATE TABLE Students (
StudentID INT IDENTITY PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Age INT,
Email VARCHAR(100),
LoadDate DATETIME DEFAULT GETDATE(),
UpdateDate DATETIME DEFAULT GETDATE()
);

CREATE TABLE Instructors (
InstructorID INT IDENTITY PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Age INT,
Email VARCHAR(100),
LoadDate DATETIME DEFAULT GETDATE(),
UpdateDate DATETIME DEFAULT GETDATE()
);

CREATE TABLE Courses (
CourseID INT IDENTITY PRIMARY KEY,
CourseName VARCHAR(100),
Description TEXT,
InstructorID INT,
DorationHours INT,
LoadDate DATETIME DEFAULT GETDATE(),
UpdateDate DATETIME DEFAULT GETDATE(),
FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID)
);

CREATE TABLE CoursexStudent (
CoursexStundentID INT IDENTITY PRIMARY KEY,
StudentID INT,
CourseID INT,
EnrollmentDate DATETIME,
LoadDate DATETIME DEFAULT GETDATE(),
UpdateDate DATETIME DEFAULT GETDATE(),
FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Reviews (
ReviewID INTIDENTITY PRIMARY KEY,
StudentID INT,
CourseID INT,
Review TEXT,
FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);


DELETE FROM CoursexStudent
WHERE CoursexStundentID = 13;
