USE UniversityPortalDB
GO

DELETE FROM Semesters;
DBCC CHECKIDENT ('Semesters', RESEED, 0);
