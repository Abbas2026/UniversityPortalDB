USE UniversityPortalDB;
GO

DELETE FROM Education.StudentCourses;
DBCC CHECKIDENT ('Education.StudentCourses', RESEED, 0);