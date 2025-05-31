USE UniversityPortalDB;
GO

DELETE FROM StudentCourses;
DBCC CHECKIDENT ('StudentCourses', RESEED, 0);