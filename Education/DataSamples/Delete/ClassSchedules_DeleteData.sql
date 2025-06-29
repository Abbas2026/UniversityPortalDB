USE UniversityPortalDB;
GO

DELETE FROM Education.ClassSchedules;
DBCC CHECKIDENT ('Education.ClassSchedules', RESEED, 0);