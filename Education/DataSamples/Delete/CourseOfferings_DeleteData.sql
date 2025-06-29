USE UniversityPortalDB;
GO

DELETE FROM Education.CourseOfferings;
DBCC CHECKIDENT ('Education.CourseOfferings', RESEED, 0);