USE UniversityPortalDB;
GO

DELETE FROM CourseOfferings;
DBCC CHECKIDENT ('CourseOfferings', RESEED, 0);