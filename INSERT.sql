INSERT INTO Instructors(FirstName, LastName, Age, Email)
VALUES ('Marye', 'Jane', 45, 'mary.jane@example.com')

INSERT INTO Courses (CourseName, Description, InstructorID, DorationHours)
VALUES ('Ingl�s',
'Un curso de ingl�s t�pico proporciona ense�anza y pr�ctica en habilidades como comprensi�n auditiva, lectura, escritura y expresi�n oral. Suele incluir gram�tica, vocabulario, y ejercicios interactivos para mejorar la fluidez y la comprensi�n del idioma ingl�s.',
3,
100),
('Frances',
'Un curso de franc�s t�pico se centra en ense�ar habilidades fundamentales como comprensi�n auditiva, lectura, escritura y expresi�n oral en franc�s. Incluye lecciones de gram�tica, vocabulario y pr�cticas interactivas para desarrollar la fluidez y comprensi�n del idioma franc�s, adem�s de ofrecer una introducci�n a la cultura franc�fona.',
3,
95),
('Bases de Datos con SQL',
'Un curso de Bases de Datos con SQL ense�a c�mo dise�ar, gestionar y consultar bases de datos usando SQL, cubriendo desde la creaci�n de tablas hasta consultas avanzadas y optimizaci�n de rendimiento.',
2, 225)

INSERT INTO CoursexStudent (StudentID, CourseID, EnrollmentDate)
VALUES 
(2, 4, GETDATE()),
(3, 4, GETDATE()),
(4, 2, GETDATE()),
(4, 2, GETDATE()),
(5, 1, GETDATE())