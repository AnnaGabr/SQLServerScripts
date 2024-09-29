INSERT INTO Instructors(FirstName, LastName, Age, Email)
VALUES ('Marye', 'Jane', 45, 'mary.jane@example.com')

INSERT INTO Courses (CourseName, Description, InstructorID, DorationHours)
VALUES ('Inglés',
'Un curso de inglés típico proporciona enseñanza y práctica en habilidades como comprensión auditiva, lectura, escritura y expresión oral. Suele incluir gramática, vocabulario, y ejercicios interactivos para mejorar la fluidez y la comprensión del idioma inglés.',
3,
100),
('Frances',
'Un curso de francés típico se centra en enseñar habilidades fundamentales como comprensión auditiva, lectura, escritura y expresión oral en francés. Incluye lecciones de gramática, vocabulario y prácticas interactivas para desarrollar la fluidez y comprensión del idioma francés, además de ofrecer una introducción a la cultura francófona.',
3,
95),
('Bases de Datos con SQL',
'Un curso de Bases de Datos con SQL enseña cómo diseñar, gestionar y consultar bases de datos usando SQL, cubriendo desde la creación de tablas hasta consultas avanzadas y optimización de rendimiento.',
2, 225)

INSERT INTO CoursexStudent (StudentID, CourseID, EnrollmentDate)
VALUES 
(2, 4, GETDATE()),
(3, 4, GETDATE()),
(4, 2, GETDATE()),
(4, 2, GETDATE()),
(5, 1, GETDATE())