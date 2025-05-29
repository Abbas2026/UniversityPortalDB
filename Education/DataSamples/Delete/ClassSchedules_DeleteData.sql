USE UniversityPortalDB;
GO

DELETE FROM ClassSchedules;
DBCC CHECKIDENT ('ClassSchedules', RESEED, 0);