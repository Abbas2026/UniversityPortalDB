USE UniversityPortalDB;
GO

DELETE FROM Courses;

DBCC CHECKIDENT ('Courses', RESEED, 0);
