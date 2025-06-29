USE UniversityPortalDB
GO

DELETE FROM Education.Semesters;
DBCC CHECKIDENT ('Education.Semesters', RESEED, 0);
