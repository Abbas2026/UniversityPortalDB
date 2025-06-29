USE UniversityPortalDB;
GO

DELETE FROM Education.StudentStatusChanges;
DBCC CHECKIDENT ('Education.StudentStatusChanges', RESEED, 0);