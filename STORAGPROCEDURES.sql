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
	@Email='nanpel@example.com';





-- Ejemplo Procedure con OUTPUT

CREATE PROCEDURE sp_InsertInstructorWithOutput
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Age INT,
    @Email VARCHAR(100),
    @NewInstructorID INT OUTPUT  -- Parámetro de salida
AS
BEGIN
    -- Manejo de errores
    BEGIN TRY
        -- Insertar un nuevo instructor
        INSERT INTO Instructors (FirstName, LastName, Age, Email)
        VALUES (@FirstName, @LastName, @Age, @Email);

        -- Obtener el ID del nuevo instructor
        SET @NewInstructorID = SCOPE_IDENTITY();  -- Asignar el ID generado al parámetro de salida
    END TRY
    BEGIN CATCH
        -- Manejar errores y mostrar mensaje
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR (@ErrorMessage, 16, 1);
    END CATCH
END;

-- Declarar una variable para almacenar el valor de salida
DECLARE @InstructorID INT;

-- Llamar al procedimiento y capturar el valor de salida
EXEC sp_InsertInstructorWithOutput 
    @FirstName = 'Ana', 
    @LastName = 'Martínez', 
    @Age = 30, 
    @Email = 'ana.martinez@example.com', 
    @NewInstructorID = @InstructorID OUTPUT;  -- Usar OUTPUT para el parámetro de salida

-- Ver el valor del nuevo InstructorID
SELECT @InstructorID AS NewInstructorID;







-- Ejemplo ROLLBACK
CREATE PROCEDURE sp_InsertInstructorWithTransaction
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Age INT,
    @Email VARCHAR(100),
    @StatusMessage VARCHAR(100) OUTPUT -- Parámetro de salida
AS
BEGIN
    BEGIN TRY
        -- Iniciar la transacción
        BEGIN TRANSACTION;

        -- Intentar realizar la inserción
        INSERT INTO Instructors (FirstName, LastName, Age, Email, LoadDate, UpdateDate)
        VALUES (@FirstName, @LastName, @Age, @Email, GETDATE(), GETDATE());

        -- Si todo va bien, confirmar la transacción
        COMMIT;

        -- Asignar mensaje de éxito al parámetro de salida
        SET @StatusMessage = 'Inserción completada exitosamente.';
    END TRY
    BEGIN CATCH
        -- En caso de error, deshacer la transacción
        ROLLBACK;

        -- Asignar mensaje de error al parámetro de salida
        SET @StatusMessage = 'Ocurrió un error: ' + ERROR_MESSAGE();
    END CATCH
END;
