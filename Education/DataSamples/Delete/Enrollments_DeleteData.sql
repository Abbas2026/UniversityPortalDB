USE UniversityPortalDB;
GO

DELETE FROM Enrollments;
DBCC CHECKIDENT ('Enrollments', RESEED, 0);