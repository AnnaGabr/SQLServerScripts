CREATE PROCEDURE sp_InsertIntructor
@FirstName VARCHAR(50),
@LastName VARCHAR(50),
@Age INT,
@Email VARCHAR(50)
AS
BEGIN
	INSERT INTO Instructors (FirstName, LastName, Age, Email)
	VALUES (@FirstName, @LastName, @Age, @Email);
END

-- Utilizar el procedimiento almacenado:
EXEC sp_InsertIntructor
	@FirstName='Nancy', 
	@LastName='Pelaez', 
	@Age=25, 
	@Email='nanpel@example.com'