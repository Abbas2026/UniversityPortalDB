USE UniversityPortalDB;
GO

DELETE FROM Education.Courses;

DBCC CHECKIDENT ('Education.Courses', RESEED, 0);
